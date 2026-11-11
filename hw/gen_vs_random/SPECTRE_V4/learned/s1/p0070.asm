.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -64
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -17
test al, sil
and rsi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rsi]
inc eax
test al, 57
add dl, al
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and cl, bl
xor al, -6
sub di, 9
sub al, dil
lea ax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx]
sbb dil, 48
sub bl, dil
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
sub bl, dil
and al, -118
cmp bl, dl
test al, -38
adc cl, dil
adc sil, -112
add bl, bl
inc eax
and al, 59
adc dil, 112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
