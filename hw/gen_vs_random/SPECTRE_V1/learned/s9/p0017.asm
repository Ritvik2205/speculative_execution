.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 40 # instrumentation
btc rbx, rbx
and bl, dl
add al, -72
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
inc bl
sub dl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
sbb cl, 105
jmp .bb_0.1
.bb_0.1:
and edi, 65
test al, -71
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
