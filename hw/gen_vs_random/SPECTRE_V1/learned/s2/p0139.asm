.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, sil
test al, -71
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
and cl, bl
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
add dil, bl
jl .bb_0.2
jmp .exit_0
.bb_0.2:
and dl, -111
cmp ebx, -33
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx], 16
test bl, -8
xor di, 15
lea di, qword ptr [rax]
jns .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
