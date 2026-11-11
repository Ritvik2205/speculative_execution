.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov bl, cl
cmp sil, cl
xor cl, -15
test bl, al
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
or dil, 5
btc ecx, 201
jmp .bb_0.1
.bb_0.1:
sbb al, 31
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and cl, bl
xor al, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
xor bl, -126
and al, cl
test cl, -52
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], sil
bts ebx, 189
sbb sil, 24
sbb cl, 12
bts ax, 155
xor cl, 88
sbb sil, -124
and bl, dl
sub al, -84
and dil, -120
and dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
