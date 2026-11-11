.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx + rdx]
add dl, 85 # instrumentation
cmovp ax, ax
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
and rax, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rax]
bts rdx, rdx
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
or cx, 35
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 0
or rcx, 87
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 48
cmp edx, 99
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
