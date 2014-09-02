BEGIN {
    print "tstamp,buffers,pct_buffer,added,removed,recycled,write,sync,total,synced,longest,average"
}
# 2014-06-27 03:17:15.366 UTC "checkpoint complete: wrote 21504 buffers (1.4%); 0 transaction log file(s) added  0 removed  0 recycled; write=8.298 s  sync=2.225 s  total=10.544 s; sync files=247  longest=0.174 s  average=0.009 s"
{
    split($19, w, /=/);
    split($21, s, /=/);
    split($23, t, /=/);
    split($26, f, /=/);
    split($27, l, /=/);
    split($29, a, /=/);
    print $1 "T" $2 "Z", $7, substr($9, 2, length($9)-4), $10, $15, $17, w[2], s[2], t[2], f[2], l[2], a[2];
}
