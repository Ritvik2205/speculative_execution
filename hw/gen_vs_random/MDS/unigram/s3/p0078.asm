.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns ax, si
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 66
bt dx, 5
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 80
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
bts ecx, ebx
and dl, -26 # instrumentation
cmovnp rcx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
cmovno edx, eax
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and cl, -109 # instrumentation
cmovns rax, rax
and bl, -66 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
and al, 126
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
xor esi, 79
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 27
or si, 26
or sil, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
