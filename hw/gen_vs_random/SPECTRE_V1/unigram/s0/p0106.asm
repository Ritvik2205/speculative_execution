.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz al
xchg eax, edx
dec cl
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
xor rsi, 73
add cl, 97 # instrumentation
adc cx, bx
lea ebx, qword ptr [rsi + rbx + 72]
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
add al, 110
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnb ax, cx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 28
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
