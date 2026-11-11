.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, sil
lea rcx, qword ptr [rsi + rbx + 93]
and rdi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdi]
add cl, sil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
and bx, -118
cmp al, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
