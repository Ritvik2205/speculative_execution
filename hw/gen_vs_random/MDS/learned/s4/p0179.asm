.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
xor dl, 8
xor cl, 98
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
test bl, -14
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rax]
jmp .bb_0.4
.bb_0.4:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 26
xor al, -4
test bl, -14
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
jmp .bb_0.5
.bb_0.5:
or al, 37
test cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
