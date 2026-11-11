.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
test dl, 114
add al, 19
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
cmp sil, 127
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor ax, -22861
adc dl, 39
adc dil, dl
sub sil, -35
xor al, dl
or al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor ax, 30500
cmovno edi, ecx
cmp cl, 59
mov bl, cl
sub cl, -73
adc sil, bl
sbb al, dl
not rsi
sbb al, -39
xor bl, cl
test ecx, -907816607
cmp eax, 1521417271
add bl, cl
and sil, al
sub al, 29
btc rax, rbx
sub al, bl
and al, dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
