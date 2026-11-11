.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
sbb al, 118
and rdi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdi]
cmp al, sil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea cx, qword ptr [rdi + rax]
jmp .bb_0.2
.bb_0.2:
adc bl, -73
xchg al, bl
jle .bb_0.3
jmp .exit_0
.bb_0.3:
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
sub al, -89
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
add edx, 66
dec dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
