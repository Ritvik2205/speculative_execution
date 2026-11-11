.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
inc rbx
add al, -72
sbb esi, 7
and di, 42
and rdi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdi]
setz dil
sbb dl, 127
add al, al
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
