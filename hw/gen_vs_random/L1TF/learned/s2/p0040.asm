.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
or rsi, 44
and cx, -79
xchg ecx, edx
xchg esi, eax
test di, 73
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
add dl, bl
cmp dl, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
