.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
sbb cl, 12
cmp dil, 101
cmp cl, -80
xchg bl, sil
xchg rbx, rsi
xchg rbx, rdx
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
sub sil, -35
or al, -16
add cl, sil
test dil, bl
dec cl
xchg rsi, rcx
dec dil
sub eax, -865916088
jmp .bb_0.1
.bb_0.1:
adc edx, -86
bts esi, 18
test eax, -251558852
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
sub al, bl
add si, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
