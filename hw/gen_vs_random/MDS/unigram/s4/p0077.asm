.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 72 # instrumentation
cmovz edi, ebx
test dil, -51
xor cl, -13
and dl, 57 # instrumentation
cmovnb bx, ax
bts edi, edx
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and cl, 61 # instrumentation
cmovl si, cx
or dil, cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
jmp .bb_0.1
.bb_0.1:
cmovns rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
btr ecx, edi
test bl, -114
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
bt di, cx
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], bx
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
