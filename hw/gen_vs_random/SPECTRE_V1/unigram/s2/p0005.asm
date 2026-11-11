.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add dl, -97 # instrumentation
sets al
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
xchg cl, sil
mul sil
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
cmp cl, bl
cmovz cx, cx
xor ebx, eax
lea ax, qword ptr [rax + rcx + 6]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
cmovnl edi, edx
and rdi, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
