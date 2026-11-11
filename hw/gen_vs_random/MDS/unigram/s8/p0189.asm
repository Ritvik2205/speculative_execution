.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
xor sil, 94
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
test rdx, 45
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 81
and rax, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 0
and bl, 65 # instrumentation
cmovnbe bx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
xor bl, -88
cmovns edx, edi
or bl, 13
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and bl, -123 # instrumentation
cmovnp dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
