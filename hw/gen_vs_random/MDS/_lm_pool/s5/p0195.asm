.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and dl, dl
xor cl, 55
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
bts rdx, rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
xor sil, -14
and cl, 79
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and dx, 3
bts rax, 77
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
or bl, -62
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
