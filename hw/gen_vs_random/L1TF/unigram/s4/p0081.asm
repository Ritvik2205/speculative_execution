.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwde
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rsi]
add bl, -37 # instrumentation
dec dl
test rdi, rdx
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
lea rbx, qword ptr [rax + rbx + 66]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 22
and rsi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rsi]
cmovs dx, bx
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
lea bx, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
