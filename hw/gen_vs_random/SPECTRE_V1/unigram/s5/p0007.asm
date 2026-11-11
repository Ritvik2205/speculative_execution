.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdx + rax + 55]
btc eax, 3
add dil, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
xor ebx, 55
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
lea rax, qword ptr [rax]
add dl, -47 # instrumentation
sbb dil, 25
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
lea edi, qword ptr [rdx]
add al, 120 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rsi]
add ecx, 88
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
sub dil, -32
add dl, 20 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
