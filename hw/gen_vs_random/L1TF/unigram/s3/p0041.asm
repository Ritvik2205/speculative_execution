.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -82
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], bl
cmovnl si, bx
add bl, 15 # instrumentation
cmovb eax, eax
neg bl
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
inc edx
xor dl, al
sbb al, 77
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 58
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 86
adc al, bl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 15
test rsi, 48
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 5
add dx, -51
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
