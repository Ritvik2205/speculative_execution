.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp rax, rdi
add cl, -23 # instrumentation
cmovl ax, dx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
add al, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
bswap edx
neg rsi
and sil, al
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
neg eax
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi], 37
add sil, cl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
