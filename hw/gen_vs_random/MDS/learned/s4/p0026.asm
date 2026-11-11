.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
or eax, edx
xor dx, 87
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
and eax, 461212071
bt esi, 3
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test eax, 298249463
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
and sil, 74
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], di
test ecx, -1843375753
and sil, -69
cmovno rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
