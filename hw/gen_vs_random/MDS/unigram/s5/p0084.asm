.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ebx, eax
jmp .bb_0.1
.bb_0.1:
and sil, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and bl, -6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rcx]
and ecx, eax
and rbx, 65
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], edi
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 62
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
bt cx, dx
cmovns di, ax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and cl, 79
bts rdi, 130
btc dx, ax
xor bl, -27
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
