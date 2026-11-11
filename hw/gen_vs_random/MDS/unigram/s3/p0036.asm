.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 73
cmovb ecx, edi
cmovo edi, edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
test cl, sil
or al, bl
bts rbx, rsi
test bx, cx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 59
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
and sil, 84 # instrumentation
cmovbe si, cx
xor dil, cl
not sil
cmovle edi, ebx
and bl, sil
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 71
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
