##

```sh
aws ec2 create-vpc-peering-connection \
--vpc-id vpc-028361537f35eccc0 \
--peer-vpc-id vpc-028796f1034963198
```

```sh
aws ec2 accept-vpc-peering-connection \
--vpc-peering-connection-id pcx-05d685226e7ec1ada
```

```sh
aws ec2 create-route \
--route-table rtb-0bc587bab764d0598 \
--destination-cidr-block 10.3.0.0/16 \
--vpc-peering-connection-id pcx-05d685226e7ec1ada
```

```sh
aws ec2 create-route \
--route-table rtb-02159e39934927242 \
--destination-cidr-block 10.0.0.0/16 \
--vpc-peering-connection-id pcx-05d685226e7ec1ada
```
