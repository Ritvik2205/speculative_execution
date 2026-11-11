.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
cmp cl, sil
sub al, dl
bts edi, 60
test cl, -24
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
xor dl, al
test ecx, 53
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
