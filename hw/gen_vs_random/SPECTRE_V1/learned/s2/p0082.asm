.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -89
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
xor ebx, 96
not eax
add dl, 47
test al, 59
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
sbb dil, sil
and rcx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rcx]
sub al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
