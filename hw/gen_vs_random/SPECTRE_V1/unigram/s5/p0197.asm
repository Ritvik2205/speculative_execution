.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], bx
and rax, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rax
add edi, -91
lea ecx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 75
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovs rbx, rbx
or bx, 9
lea rbx, qword ptr [rcx + rbx + 9]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 32
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
cmp bl, -114
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
