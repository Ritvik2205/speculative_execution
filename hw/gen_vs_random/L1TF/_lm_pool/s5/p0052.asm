.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rbx]
or dil, -113
cmp al, 56
and al, -68
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
