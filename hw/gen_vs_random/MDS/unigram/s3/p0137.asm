.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
xor al, dl
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
xor dil, 124
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
btr di, 89
cmovns rsi, rcx
and si, -121
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 33
bt di, dx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rbx], si
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 100
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
cmovl eax, edx
cmovnp di, si
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
xor bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
