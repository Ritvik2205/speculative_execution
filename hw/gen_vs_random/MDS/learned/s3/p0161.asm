.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 27
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
xor si, 80
and ax, -16061
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
and dil, dil
or ax, 16560
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and esi, 47
test rax, -2004802425
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or dl, 85
btr rax, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
