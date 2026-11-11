.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
cmovp edx, ecx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 8
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
or bx, 52
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 77
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and dil, -115 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdi]
bt edi, 254
and dl, sil
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
or rax, 1749358813
and rax, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rax]
cmovnbe edi, edx
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], si
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], ax
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
btc cx, di
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
