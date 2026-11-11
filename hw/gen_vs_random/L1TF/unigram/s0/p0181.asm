.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc edx, 60
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 86
and rax, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 1
sub bl, dil
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
btc dx, dx
or rdx, -22
or rbx, 18
or edx, ebx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rbx
seto al
sub bl, -96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
