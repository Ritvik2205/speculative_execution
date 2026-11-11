.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 124
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
test bl, -14
xor dil, -5
xor sil, -126
or al, -75
or sil, sil
test rcx, -613256812
btr si, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor dil, al
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
