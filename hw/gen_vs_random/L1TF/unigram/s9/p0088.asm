.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb cl
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
lea si, qword ptr [rdi]
mov dx, cx
setp dil
add dil, dil
jmp .bb_0.1
.bb_0.1:
or cl, sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], si
cmp ax, -6940
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
btc ax, dx
bt rsi, rcx
cmovo si, ax
lea si, qword ptr [rbx + rbx + 22]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
