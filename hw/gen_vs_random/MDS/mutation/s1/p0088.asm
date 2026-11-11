.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 121 # instrumentation
bt rdi, 138
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
or dl, dl
bts dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovb bx, si
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
not rsi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
or al, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
