.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or bl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ebx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
test dil, al
xor cl, 15
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
xor dil, 81
or dil, cl
bt edx, esi
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
