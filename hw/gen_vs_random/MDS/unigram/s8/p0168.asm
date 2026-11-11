.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe ax, si
and sil, 34 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
not rdx
xor ax, si
and dl, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
xor cl, 98
bts rbx, rdi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
or dil, -41
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
or cl, cl
or dil, -78
cmovz cx, bx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
