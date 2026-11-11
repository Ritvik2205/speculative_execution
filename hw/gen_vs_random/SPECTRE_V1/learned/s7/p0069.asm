.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
or edx, ebx
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
cmovb rdi, rdx
sbb dil, dl
mov al, dl
lea cx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
