.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
cmovnp rdi, rdi
dec edx
xchg dx, di
add dl, 121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 60
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
cmp ax, 7046
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
