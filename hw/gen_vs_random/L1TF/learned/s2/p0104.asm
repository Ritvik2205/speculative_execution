.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 104 # instrumentation
mov ebx, 92
xor bl, cl
jmp .bb_0.1
.bb_0.1:
test al, cl
test si, 63
jmp .bb_0.2
.bb_0.2:
test rax, rdx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
jmp .bb_0.3
.bb_0.3:
test dl, 84
xor dl, cl
and sil, 93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
