.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
lea edi, qword ptr [rsi + rsi + 3]
inc dl
and rdi, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdi]
sub al, -47
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sbb cl, bl
and dil, dil
and cl, bl
test sil, 29
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
