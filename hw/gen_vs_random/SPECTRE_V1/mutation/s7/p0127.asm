.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
adc di, si
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
xor al, al
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 36
movsx rdi, bx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp cl, bl
cmovo di, si
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], -72
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
adc sil, -77
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
