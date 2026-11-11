.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnz dil
and rax, rax
btc ax, cx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
cmp dil, bl
setz dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
neg rdi
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 12
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
