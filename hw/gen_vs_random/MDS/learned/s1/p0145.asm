.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
bts ebx, 205
or dl, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and eax, 943733866
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
xor dil, -70
and dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or cl, -77
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or al, -58
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
