.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
or dil, -78
and cl, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
cmovbe rdx, rdx
cmovns rdi, rdx
bt dx, di
cmovno rcx, rdi
and bl, -82 # instrumentation
cmovz ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and si, -121
bts rax, 77
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
or sil, -78
and al, -31 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rcx]
xor al, 55
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
