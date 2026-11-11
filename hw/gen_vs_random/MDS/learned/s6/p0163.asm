.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and dil, sil
xor al, 9
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
not al
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
and cl, bl
or dl, 85
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
or al, -58
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
or ax, 16560
test bx, 25542
or rsi, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
