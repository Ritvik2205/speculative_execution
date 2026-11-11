.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -104 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
xor di, 7
or sil, bl
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
xor dl, 19
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
test cl, 70
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
add bl, 68
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
sbb al, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rcx, qword ptr [rdi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
