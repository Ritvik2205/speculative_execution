.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 77
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovl rdi, rax
cmovb edi, eax
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
cmovnz di, si
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
cmovnz eax, edi
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
xor ax, dx
and cl, 89 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
and al, 122 # instrumentation
cmovnbe eax, edx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 7
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ecx
and dl, -33 # instrumentation
cmovns rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
