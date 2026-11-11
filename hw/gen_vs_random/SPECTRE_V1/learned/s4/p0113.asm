.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
lea rax, qword ptr [rdi]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rbx]
sbb al, -14
cmp al, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
add cl, cl
adc esi, -39
cmp al, dl
test cl, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
