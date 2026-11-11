.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb dil, dil
or bl, 114
or sil, bl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 22
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jns .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
sub al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
