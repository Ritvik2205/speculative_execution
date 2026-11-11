.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
add bl, 91
lea rcx, qword ptr [rbx + rsi + 4951]
and rdi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
sub bl, bl
lea edi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add cl, -84 # instrumentation
xchg rdx, rcx
sub ax, -12040
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
sbb cx, 98
bt rcx, 86
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
