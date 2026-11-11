.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
cmovnl rcx, rbx
btr edi, edi
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
bt rsi, 27
bt ecx, edi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], di
xor al, -89
and rcx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and bl, 3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 23
cmovl ecx, ebx
and dl, -127 # instrumentation
cmovno edi, esi
btc rax, 110
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
