.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
and sil, bl
and dil, -39
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 20
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
btr ax, dx
xor di, -83
or al, -78
test bl, -114
btr ebx, ecx
or dl, sil
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
