.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
cmp rcx, 69
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
lea ax, qword ptr [rdx + rbx + 96]
test dl, -36
xor al, cl
and sil, 11
add dil, al
xor bl, dil
mov bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
