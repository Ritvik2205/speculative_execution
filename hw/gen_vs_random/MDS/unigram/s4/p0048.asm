.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
bts eax, esi
and rcx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rcx]
cmovle rcx, rdx
cmovno bx, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
cmovnb esi, ebx
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
test al, al
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 5
cmovz cx, bx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 38
and dl, 91 # instrumentation
cmovnle eax, eax
xor si, dx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
cmovo rdx, rbx
and dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
