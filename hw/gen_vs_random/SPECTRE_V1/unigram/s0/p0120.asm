.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
add cl, -80 # instrumentation
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
mov dl, 38
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 3
add al, -76 # instrumentation
adc al, 36
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
xor cl, -91
add dl, -26 # instrumentation
cmovle rdi, rdx
imul al
nop
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
cmovnle ax, si
imul dl
mul bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
