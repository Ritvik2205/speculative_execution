.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
sub dil, -111
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 2
sbb al, cl
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
sub ax, -16648
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
