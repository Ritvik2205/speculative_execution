.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdi, rcx
or ax, 12618
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
cmovno edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
setno al
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
add ebx, 94
test di, 13
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
lea ebx, qword ptr [rdx + rsi]
lea si, qword ptr [rdx]
cmovnz rax, rdx
add dil, -94 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
