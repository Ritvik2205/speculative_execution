.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, 34
sub al, -97
setno al
or al, -57
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
sbb sil, 19
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 0
and dl, 32
xor bl, -5
adc sil, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
