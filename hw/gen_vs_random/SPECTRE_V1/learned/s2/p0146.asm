.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and al, dl
adc eax, -655457029
test rax, rcx
lea si, qword ptr [rax + rdi + 22]
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
