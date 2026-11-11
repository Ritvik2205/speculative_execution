.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
lea rax, qword ptr [rdi]
adc bx, 66
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
lea rax, qword ptr [rdi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sbb dil, sil
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 76
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
sub dil, bl
imul dl
sub dil, -111
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
