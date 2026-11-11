.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, cl
and bx, 44
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
not al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
or cl, 39
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rdi]
or bl, 43
and dl, sil
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and edi, 23
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
xor dil, dl
xor al, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
