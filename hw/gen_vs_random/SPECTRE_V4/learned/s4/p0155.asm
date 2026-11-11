.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, cx
cmp di, -8
cmp ecx, 69
xor sil, sil
sub sil, -35
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
cmp cl, bl
sbb al, 57
mov dil, al
cmp al, -1
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
sub al, cl
xor cl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
