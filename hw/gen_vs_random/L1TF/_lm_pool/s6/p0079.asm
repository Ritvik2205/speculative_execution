.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -1
and rbx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rbx]
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rsi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rsi]
not cl
cmp dil, 36
test sil, 29
jmp .bb_0.1
.bb_0.1:
test al, -104
xor dl, sil
xor dl, 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
