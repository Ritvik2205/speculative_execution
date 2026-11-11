.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
movzx ebx, ax
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
mov rbx, -8992833348021516010
cmp edi, 96
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
adc cx, ax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
lea rbx, qword ptr [rcx + rsi]
cmp ebx, -33
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], cx
lea dx, qword ptr [rdi + rdx + 22]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
lea bx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
