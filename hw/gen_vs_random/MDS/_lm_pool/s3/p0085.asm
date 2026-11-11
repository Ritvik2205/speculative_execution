.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], ecx
or edx, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 60
or sil, -78
and al, 106
not cl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and sil, -56
test cx, 401
xor rax, -345061362
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 70
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
