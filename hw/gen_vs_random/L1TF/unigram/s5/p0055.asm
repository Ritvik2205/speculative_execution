.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, rsi
sbb al, cl
and dl, sil
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 48
sbb edx, 23
lea rdi, qword ptr [rax + rbx + 66]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], bl
mov si, 32553
xor al, 16
add dil, -7
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
