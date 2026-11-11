.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, ebx
neg dl
sbb ecx, edx
adc cl, -19
cmovs ebx, eax
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rcx
imul rbx
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 66
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
sub al, al
adc rcx, rsi
cmp bx, si
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
sub sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
