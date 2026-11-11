.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rbx, qword ptr [rbx]
adc edi, -83
adc esi, 86
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 85
test dil, cl
neg rdx
sub sil, 71
test eax, -251558852
add al, -127
or rax, -897763206
and dil, -120
and dx, -107
or ax, 7381
sub rax, 2016976449
sbb al, bl
bts di, 30
or eax, 1001462340
cmp dil, bl
and si, -74
test edi, -2098143765
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], -49
xchg esi, ebx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], al
dec al
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
xor dl, -123
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 94
sub al, -128
adc cl, -66
and si, -74
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 44
adc dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
