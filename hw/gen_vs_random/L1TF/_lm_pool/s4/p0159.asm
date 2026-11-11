.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
sub cl, -49
setb al
add al, -46
and cx, 127
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
or al, -2
lea si, qword ptr [rdi + rax + 26]
jmp .bb_0.1
.bb_0.1:
and sil, 32 # instrumentation
cmovnbe esi, eax
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
add bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
