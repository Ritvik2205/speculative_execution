.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
xor dil, -124
and si, -121
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
or cl, bl
and cl, 79
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
xor edi, 56
xor ax, -16696
or sil, -49
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or si, 94
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
and rcx, 107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
