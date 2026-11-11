.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
setz cl
test al, 84
setz cl
lea si, qword ptr [rdx + rdi]
add dil, 72
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
mov al, bl
xor cx, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
