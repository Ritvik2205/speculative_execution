.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts bx, 25
cmp rbx, 47
mov al, dl
lea ax, qword ptr [rdx]
lea edx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 25
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 55
add cl, -127
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
cmovnle rdi, rsi
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
