.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], bx
sub al, sil
and rcx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
xchg al, dl
not cl
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
lea rbx, qword ptr [rsi + rdi + 28]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
