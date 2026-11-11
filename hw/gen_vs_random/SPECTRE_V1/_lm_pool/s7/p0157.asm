.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
test cl, -33
setno dl
and rdi, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdi]
sub al, -1
and dl, -109
adc bx, 68
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub bx, 10
sbb dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
