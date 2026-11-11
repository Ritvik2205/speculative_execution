.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 47
add edi, ecx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
xchg al, bl
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
add cl, 84 # instrumentation
btc cx, cx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 29
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rax]
lea ecx, qword ptr [rbx + rax + 57]
lea rcx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 31
neg rcx
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rbx], cx
btc ecx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
