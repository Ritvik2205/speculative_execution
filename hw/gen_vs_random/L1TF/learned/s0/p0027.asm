.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -46
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
xor al, cl
xor bl, cl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 77
xchg esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
