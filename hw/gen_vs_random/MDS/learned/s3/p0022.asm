.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, di
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
or bl, dil
xor bl, al
test rdi, 50
test cl, sil
and eax, 943733866
btc ax, bx
xor bl, -102
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor sil, dl
xor rbx, 89
test bl, dil
xor al, cl
or sil, -49
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
