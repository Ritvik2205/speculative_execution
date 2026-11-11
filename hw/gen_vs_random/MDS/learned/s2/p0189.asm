.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 70
xor al, -19
test rax, 1000448998
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
or cl, dl
test rdi, rcx
test al, -7
xor bl, sil
test bl, dl
test ax, 18697
or dl, bl
btc di, 164
or cl, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
