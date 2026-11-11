.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec rax
or bl, dil
add rdi, 50
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 22 # instrumentation
cmovns rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], cl
and bl, 46
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rdi
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 30
setb sil
imul bl
add dx, 78
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 83
add dil, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
