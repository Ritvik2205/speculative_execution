.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb si, si
test dl, 25
xor rsi, 65
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
btc rsi, 40
and ax, -22368
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 59
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and al, -64 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
and ax, di
and dl, -107 # instrumentation
cmovz rdi, rcx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 23
and cl, -63
and dl, 84 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
btc rsi, 94
xor di, cx
bts si, 19
cmovs ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
