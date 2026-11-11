.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
test dil, -116
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
cmp ax, 7452
or al, 100
and ax, -13240
test al, 40
movsx ebx, bl
lea rbx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
