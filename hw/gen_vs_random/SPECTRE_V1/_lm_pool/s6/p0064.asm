.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
test dl, -36
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
xchg rcx, rbx
and sil, 11
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 91
and rcx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rcx]
add esi, 26
sbb al, bl
xor sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
