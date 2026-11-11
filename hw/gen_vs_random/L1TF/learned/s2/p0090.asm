.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 14
add dl, -70
sbb dl, dil
add sil, bl
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
mov dl, al
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
add al, sil
jmp .bb_0.1
.bb_0.1:
test dl, -37
movsx edi, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
