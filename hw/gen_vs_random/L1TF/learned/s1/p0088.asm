.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, -104 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
jmp .bb_0.2
.bb_0.2:
xchg al, sil
lea dx, qword ptr [rsi + rbx]
jmp .bb_0.3
.bb_0.3:
sub cl, -49
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
xor al, 16
inc eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
