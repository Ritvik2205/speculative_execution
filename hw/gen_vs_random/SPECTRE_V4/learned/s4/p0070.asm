.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -26
cmp ebx, 80
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
and eax, -1145483375
xor al, 99
dec dil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
xor al, -84
adc cl, -66
adc bl, -58
test al, -24
cmp rax, -47
xor cl, dil
neg rdi
cmovnbe ecx, eax
sub eax, -1804712207
and dl, 24
cmp eax, -813838876
sub cl, al
or al, -16
cmp bx, 113
sub rax, 2016976449
xor ax, 20236
add al, -29
test sil, -119
sub bl, al
sbb al, 43
xor di, 51
sbb cl, 35
test bl, 110
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
