.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
jmp .bb_0.1
.bb_0.1:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
cmovnp rsi, rcx
or ax, -23697
bt di, 52
btr ax, 193
xor cl, 98
and al, -86 # instrumentation
cmovns dx, di
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], -1967998643
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rdi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rsi]
cmovs ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
