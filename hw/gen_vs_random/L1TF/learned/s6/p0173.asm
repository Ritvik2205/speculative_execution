.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
or al, -2
test al, -82
jmp .bb_0.2
.bb_0.2:
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 95
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
and dl, -86
bswap rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
