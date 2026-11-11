.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
or cl, 100
and rsi, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rsi]
and al, -61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rsi]
cmovns ebx, ebx
or cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
and dl, -49 # instrumentation
cmovno dx, di
or cl, sil
cmovnz bx, dx
cmovno di, si
and rdx, 0b1111111111111 # instrumentation
not word ptr [r14 + rdx]
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
not bx
cmovnz ebx, eax
and bl, -115 # instrumentation
cmovl ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
