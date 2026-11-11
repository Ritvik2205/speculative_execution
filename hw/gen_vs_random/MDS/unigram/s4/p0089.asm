.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
and dil, -49 # instrumentation
cmovno di, dx
and al, dl
and dil, 69
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 77
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and dil, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
or bx, 0b1000000000000000 # instrumentation
bsr bx, bx
and rbx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 26
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
cmovns edi, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
bt dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
