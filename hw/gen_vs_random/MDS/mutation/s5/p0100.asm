.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 37 # instrumentation
cmovnbe si, ax
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
btc bx, di
test ax, 6113
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], ax
test eax, 1287331633
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or bl, 127
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
btc si, 99
btr bx, ax
cmovnb si, di
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
btr rax, 29
btc edx, 7
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
test bx, ax
bts ax, si
test dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
