.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
neg bx
adc dx, bx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
lea ax, qword ptr [rbx + rbx + 48]
lea si, qword ptr [rdx + rsi + 21492]
btc eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rax
bts ebx, ecx
cmp ecx, ecx
and rdx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
neg bl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
lea bx, qword ptr [rbx + rcx + 79]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
