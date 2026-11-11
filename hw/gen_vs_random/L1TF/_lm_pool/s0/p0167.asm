.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
lea esi, qword ptr [rdi + rdi + 53]
xor rsi, 46
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
xchg al, cl
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
cmovnbe di, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
