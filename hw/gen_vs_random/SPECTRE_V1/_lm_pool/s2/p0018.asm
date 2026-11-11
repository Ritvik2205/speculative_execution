.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, dl
and rbx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, 47
lea di, qword ptr [rdx + rcx + 15]
cmp dil, -58
and rbx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rbx]
adc al, dl
inc rax
lea si, qword ptr [rdi + rbx]
lea rdi, qword ptr [rax + rdi]
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
