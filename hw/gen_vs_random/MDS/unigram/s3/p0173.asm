.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ecx
or rdi, 21
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], 24
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and dil, sil
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rsi
and bx, 98
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
test bx, si
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovz rdx, rbx
and cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
