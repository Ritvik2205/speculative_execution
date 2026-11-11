.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and al, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 42
cmovns ebx, eax
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdi]
cmovnl cx, bx
cmovp rax, rcx
jmp .bb_0.1
.bb_0.1:
cmovl ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
cmovo rsi, rdi
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
or rax, -2043376621
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 73
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
