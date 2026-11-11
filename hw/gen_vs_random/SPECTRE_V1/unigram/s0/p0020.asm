.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 1
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], bx
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 35
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 62
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 6 # instrumentation
adc rcx, 83
add cl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
btr rbx, 132
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
xor dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
test edi, 22
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
lea cx, qword ptr [rsi + rbx + 44]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
