.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 7
and rsi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rsi]
or bl, 18
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
movsx cx, dl
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
