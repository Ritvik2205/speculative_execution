.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec cx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
or al, -48
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rax, 1163013815
or al, -57
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
