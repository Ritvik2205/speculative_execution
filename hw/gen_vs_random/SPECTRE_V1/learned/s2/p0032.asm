.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], cx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
lea cx, qword ptr [rdi + rbx + 48694]
cmp dil, bl
sub al, -82
jns .bb_0.1
jmp .exit_0
.bb_0.1:
setz dl
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and dl, dl
add cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
