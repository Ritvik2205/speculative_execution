.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
sbb cl, 105
lea ax, qword ptr [rcx]
or eax, 848176907
lea ax, qword ptr [rsi + rdi + 7]
and sil, dil
bt rdx, rax
lea esi, qword ptr [rbx]
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
