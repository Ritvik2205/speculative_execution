.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, al
test eax, edi
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
test ax, dx
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 6
bts edi, 248
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and dl, 53 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
test dil, dil
and rcx, rcx
xor dil, 8
xor edx, 94
cmovnl rdx, rsi
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], bx
cmovo rdi, rdi
and al, 67 # instrumentation
cmovl rsi, rcx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 87
cmovo rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
