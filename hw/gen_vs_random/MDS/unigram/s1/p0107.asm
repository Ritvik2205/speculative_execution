.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, bl
xor bl, 2
or edi, eax
and dl, 124 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rbx]
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
xor bx, cx
and dl, 110 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 54
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 60
cmovo cx, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and ax, 15401
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
cmovp ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdx]
and al, 33 # instrumentation
cmovnle edi, eax
bt eax, 9
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
