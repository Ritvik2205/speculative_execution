.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 7954
sub dl, 41
sub dl, -49
sbb al, sil
lea ax, qword ptr [rbx]
jmp .bb_0.1
.bb_0.1:
add dl, 65 # instrumentation
cmovo rdx, rcx
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and cl, al
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
