.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
or al, bl
and cl, -6
or dl, -89
xor bl, 67
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and ax, 339
test ecx, -1843375753
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
xor dil, -5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
