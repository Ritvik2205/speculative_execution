.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, dil
add cl, 123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
add cl, dil
btc si, dx
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
cmovbe dx, dx
jmp .bb_0.1
.bb_0.1:
not rsi
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
or rdx, -22
lea rbx, qword ptr [rbx]
setb sil
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
sbb ax, -4845
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
