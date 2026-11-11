.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul di
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bts word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, -16969
add dl, 6 # instrumentation
adc rbx, 77
add al, 127 # instrumentation
sets dil
and rbx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rbx]
or bl, 90
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
imul cx, bx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
test edi, eax
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
mov dil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
