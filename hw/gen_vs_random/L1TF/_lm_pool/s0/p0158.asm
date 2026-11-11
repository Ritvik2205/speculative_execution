.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 48
and bl, al
or al, cl
add sil, -61
cmovp bx, cx
jmp .bb_0.1
.bb_0.1:
xor al, bl
test al, cl
sub rax, 1715032616
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
add bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
