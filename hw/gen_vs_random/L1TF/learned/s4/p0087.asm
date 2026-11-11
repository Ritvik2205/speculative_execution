.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdi, rdi
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
lea rdx, qword ptr [rcx + rdi + 67]
cmp al, 56
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 35
test sil, 29
cmp dl, -56
and sil, 37
and cl, 29
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
mov cl, sil
cmp cl, bl
add cl, -20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
