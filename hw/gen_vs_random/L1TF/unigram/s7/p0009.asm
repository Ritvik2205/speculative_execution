.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
mov cl, 82
adc al, al
and al, dl
jmp .bb_0.1
.bb_0.1:
cmovo di, dx
cmp rax, 921820217
cmp dl, -56
sbb dl, -26
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
