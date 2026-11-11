.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
or dl, dl
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
cmovp di, cx
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
cmovb bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
xor dil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
cmovnb dx, di
btr rax, 209
xor dil, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
cmovnz edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
