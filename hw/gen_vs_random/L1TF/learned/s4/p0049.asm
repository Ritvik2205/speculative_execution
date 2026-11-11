.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 45
jmp .bb_0.1
.bb_0.1:
add cl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
sbb al, -4
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor bl, cl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rbx]
adc dil, 120
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
movsx esi, bl
dec sil
sbb al, -14
sbb dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
