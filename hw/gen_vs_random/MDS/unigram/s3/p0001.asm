.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
bt ebx, 16
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
xor rax, -1657511731
btr ax, 193
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and cl, -83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rcx]
cmovnbe rbx, rsi
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 68
test edx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 2
and dx, si
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
bts bx, 3
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 4
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 13
cmovnbe rbx, rdx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
