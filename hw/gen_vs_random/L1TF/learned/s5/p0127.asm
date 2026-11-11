.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
test cl, 96
add sil, sil
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb sil, dl
add bl, dl
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
