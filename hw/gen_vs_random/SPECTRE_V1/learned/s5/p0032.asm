.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, -103 # instrumentation
cmovbe si, si
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 66
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
sbb al, -114
xchg al, cl
inc ecx
xor cx, 17
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
test bl, -8
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
