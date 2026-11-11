.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 83
sub dil, al
cmp al, 77
and sil, 52
add dl, 47
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
btc ax, bx
lea eax, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
add al, cl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
