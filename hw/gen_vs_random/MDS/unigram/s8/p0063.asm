.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 47
cmovs ax, si
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
test eax, ebx
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 5
or sil, bl
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 89
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
and cl, 91 # instrumentation
cmovle rax, rax
and al, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rax]
btr eax, 51
cmovz ax, si
bts edx, 189
and ax, ax
or cl, -36
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 2
bt rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
