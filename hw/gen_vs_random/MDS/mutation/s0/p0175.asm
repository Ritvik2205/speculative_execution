.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 56 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
cmovs ecx, edi
cmovnbe rcx, rcx
test cl, cl
and rax, 79
and rcx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rax, -731384280
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
or bl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 18
cmovnle di, dx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and bl, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rbx]
cmovp si, dx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rsi]
or rdi, 21
cmovbe edx, esi
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
or ebx, -104
and rcx, rdx
bts edx, 189
and dl, -41 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
btc bx, 58
xor al, -4
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
xor rax, -270810088
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rcx]
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
