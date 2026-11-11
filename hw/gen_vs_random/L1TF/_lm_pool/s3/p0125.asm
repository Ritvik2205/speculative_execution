.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
or ebx, eax
xchg edx, esi
xor cl, 89
lea ax, qword ptr [rbx + rsi + 6]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 48
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 25
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
adc dl, -12
or rdx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
