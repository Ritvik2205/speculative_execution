.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, cx
cmovb rax, rdx
or sil, sil
and cl, -44 # instrumentation
cmovno rdx, rsi
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
btc rbx, rbx
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 5
or sil, dl
or bx, 98
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rbx
jmp .bb_0.1
.bb_0.1:
or rdi, -11
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
or rax, 1461812833
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and dil, 8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
