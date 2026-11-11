.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp edx, 17
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 64
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 65
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 28 # instrumentation
setnz sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
adc cl, dl
lea bx, qword ptr [rcx + rbx]
setnp bl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
