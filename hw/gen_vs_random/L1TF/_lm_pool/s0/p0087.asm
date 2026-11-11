.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
add al, 56
jmp .bb_0.1
.bb_0.1:
add al, 65 # instrumentation
cmovo rax, rsi
jmp .bb_0.2
.bb_0.2:
test al, -82
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
or dl, -92
sbb bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and ax, 7954
sub al, 9
movsx rdi, ax
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
