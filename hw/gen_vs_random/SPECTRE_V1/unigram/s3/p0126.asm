.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns dl
xor rcx, 74
test bl, -8
sbb al, 118
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
add cl, -51 # instrumentation
cmovl ecx, eax
add cl, -56 # instrumentation
sbb rdx, -67
adc bl, dl
mul rcx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -27 # instrumentation
sets al
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
bswap rdx
setle cl
sub bl, dl
xchg bl, cl
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
