.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -29
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and edx, 80
movsx esi, al
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 28
xchg rcx, rax
add sil, 3
sub al, 26
adc al, cl
and sil, -84
sub sil, -35
neg bl
adc cl, -54
sbb cl, 12
sub cl, bl
sub rax, 2016976449
and al, -124
add cl, -62
sub al, 59
and rcx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rcx]
or rdx, 1
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add al, 40
adc dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
