.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 7
adc dil, 2
add al, -126 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
neg rax
cmp rax, -1877933118
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
add dl, 117 # instrumentation
sbb rdx, rsi
bt rcx, rcx
mul bl
lea rax, qword ptr [rdx + rsi]
add cl, 73 # instrumentation
add cl, -10 # instrumentation
lea edi, qword ptr [rax]
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
