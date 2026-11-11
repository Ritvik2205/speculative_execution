.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rcx]
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 24
add al, -49 # instrumentation
adc al, cl
sub dx, 34
nop
and rdi, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rdi]
and ecx, edx
neg rdx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 86
adc sil, sil
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
add al, 80 # instrumentation
sbb al, al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
