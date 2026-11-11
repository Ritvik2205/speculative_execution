.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23
sbb sil, -78
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 51
sbb ebx, 80
xor bl, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
jl .bb_0.3
jmp .exit_0
.bb_0.3:
add bl, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 94
cmp bl, -114
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
