.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -47
add sil, cl
sub sil, -35
xor ax, -6064
test cl, -10
add cl, -9
and al, 5
sub al, dil
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
or bl, cl
adc ebx, 66
sub rax, 120
adc dil, 109
mov dl, sil
and rdi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rdi]
adc eax, 1307735127
or rax, rdx
sbb di, -105
mov dil, 46
test al, cl
and rdi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdi]
or al, dl
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
adc cl, dil
or dx, 99
test dil, cl
xor al, 99
cmp al, 109
adc bl, -20
cmp rax, 1682181214
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
add al, -4
xor ax, 13329
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
