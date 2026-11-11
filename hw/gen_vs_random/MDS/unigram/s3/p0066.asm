.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 94
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 77
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
cmovnz bx, bx
bts ecx, esi
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
bts edi, 14
bts cx, 8
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 51
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 80
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 40
and al, -56 # instrumentation
cmovl rdi, rbx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 61
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and dil, -38 # instrumentation
cmovp rdi, rax
or si, 0b1000000000000000 # instrumentation
bsf si, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
