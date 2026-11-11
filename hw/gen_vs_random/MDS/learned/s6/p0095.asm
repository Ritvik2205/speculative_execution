.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -103 # instrumentation
cmovbe cx, cx
xor sil, 27
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
test bl, cl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
test al, -7
xor dl, 8
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and ax, -122
or al, dl
and sil, 89
or dil, sil
xor al, 9
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
