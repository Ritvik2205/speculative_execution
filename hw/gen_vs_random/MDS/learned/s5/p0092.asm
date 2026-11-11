.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 0
xor sil, al
jmp .bb_0.1
.bb_0.1:
or dil, -78
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
and rcx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
or dil, -78
bts ax, 22
and rax, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
