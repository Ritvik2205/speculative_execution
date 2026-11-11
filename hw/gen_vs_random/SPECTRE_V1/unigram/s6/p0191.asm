.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx + rdi]
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
xor ebx, 14
sbb eax, 1830317432
sub cl, dl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 73
btc edx, 169
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 12
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rdi, rax
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 47
add rax, 977059290
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
setnle cl
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
