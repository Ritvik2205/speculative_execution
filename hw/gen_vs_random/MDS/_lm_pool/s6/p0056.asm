.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, di
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
or al, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
xor rax, -1128378406
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
jmp .bb_0.1
.bb_0.1:
test dil, cl
and sil, al
and al, -114
and sil, 74
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
