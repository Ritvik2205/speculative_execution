.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edx, qword ptr [rbx + rbx + 24069]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], -63
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cwde
and rax, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rax]
bt dx, ax
test ebx, 70
cmovb ax, dx
add cl, 35 # instrumentation
sets dl
sub di, si
lea rsi, qword ptr [rbx + rdx]
setno dil
sbb ebx, ebx
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
cmp edx, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
