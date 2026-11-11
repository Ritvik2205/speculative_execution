.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], dx
or cl, dl
btr rbx, rax
bt dx, bx
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and bl, 96 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rax]
cmovnle rcx, rax
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and bl, 68
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or esi, -110
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
xor eax, eax
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
xor si, 80
btr dx, di
btr ebx, edi
cmovl eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
