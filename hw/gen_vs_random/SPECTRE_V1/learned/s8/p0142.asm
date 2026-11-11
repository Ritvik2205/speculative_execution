.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 63
sub al, sil
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rbx], 13
and al, 33
inc ecx
js .bb_0.1
jmp .exit_0
.bb_0.1:
test cl, -62
sub cl, bl
add dl, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
sbb eax, 1332762061
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
