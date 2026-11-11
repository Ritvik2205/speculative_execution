.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
and rdi, 25
test edi, -1252846009
xor esi, 100
and al, 75
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
