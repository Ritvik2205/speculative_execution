.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg esi, eax
or cl, -98
seto sil
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 0 # instrumentation
adc dl, bl
test rax, -1638758413
lea rdx, qword ptr [rcx + rdx + 44106]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rax, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rax]
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
or al, dl
and ecx, -38
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
