.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 66
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
btr ax, cx
xor al, -19
xor dl, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or si, 94
and bl, bl
test bl, -114
test dil, bl
or bl, sil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
