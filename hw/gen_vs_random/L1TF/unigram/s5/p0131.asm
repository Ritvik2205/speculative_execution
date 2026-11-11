.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 10
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
test dx, 33
adc cl, -34
cmovnl rcx, rbx
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dil
bt dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
inc bl
lea dx, qword ptr [rcx + rdi + 47]
test rcx, rdx
and edx, ebx
lea dx, qword ptr [rdx]
imul edi, edi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
