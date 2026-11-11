.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], cl
sub al, 0
and ax, -197
xor bl, dl
or cl, dil
test al, -38
test al, 52
cmovno dx, si
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
sub edx, 73
add edx, 89
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
