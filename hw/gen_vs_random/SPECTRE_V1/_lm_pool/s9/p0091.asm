.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], -113
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
mov bl, dil
lea rcx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
add cl, dl
sub al, sil
sbb sil, cl
cmp ax, 7452
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
