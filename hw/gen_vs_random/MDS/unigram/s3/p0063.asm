.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs ax, cx
and dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 22
and al, 49
and dl, 84 # instrumentation
cmovl rdi, rdx
xor sil, bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
not rcx
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
bt dx, si
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
not bl
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 2
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
or cl, 7
or bl, al
bt rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
