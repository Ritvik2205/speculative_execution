.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
mov dl, al
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
add al, -109
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
sbb dl, al
lea ebx, qword ptr [rdx]
sbb sil, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 55
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
