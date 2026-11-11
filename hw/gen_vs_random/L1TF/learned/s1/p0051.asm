.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
lea eax, qword ptr [rsi + rbx + 1473]
and bl, dl
sub al, -3
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
add al, -46
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
or bl, 114
and si, 30
and sil, -90
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
