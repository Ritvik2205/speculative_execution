.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 197
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
add dil, 75
test dl, -125
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test rbx, 1219566903
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and dl, dl
xor rax, -111081832
and al, 59
cmp cl, sil
test cl, 78
jmp .bb_0.1
.bb_0.1:
or rax, -2144083737
adc dil, 109
or al, dl
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
bt dx, si
sub al, 29
and dil, dl
adc bl, 97
adc al, -86
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
bts si, 17
test bl, 110
xor al, -6
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub dil, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
