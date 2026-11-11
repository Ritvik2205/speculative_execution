.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -74 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
add dx, -51
lea ecx, qword ptr [rax + rsi]
lea rsi, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
jmp .bb_0.1
.bb_0.1:
bt rsi, rbx
lea rax, qword ptr [rdx + rdi + 1]
adc rdx, 3
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
sbb dl, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
