.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnl rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 41
or al, al
cmovnle rdi, rbx
cmovnb ax, dx
and dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
jmp .bb_0.1
.bb_0.1:
btc ecx, 43
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 15
and bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
btr rax, 36
cmovp edx, eax
xor di, ax
and si, 33
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
