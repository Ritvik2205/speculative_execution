.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
or al, al
or al, al
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
test al, dil
xor ax, -5889
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and ax, 339
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
xor rbx, 89
test al, sil
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
jmp .bb_0.3
.bb_0.3:
and di, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
