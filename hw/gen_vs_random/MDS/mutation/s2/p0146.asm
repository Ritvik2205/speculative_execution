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
test eax, -571234566
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
or bl, -62
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
btc si, 99
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
or rbx, -77
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
test eax, 424329527
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovb bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
