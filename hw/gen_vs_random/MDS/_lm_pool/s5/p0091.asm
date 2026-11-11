.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 20
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
or al, -75
or al, 24
test rax, -1579405415
test al, 127
btc si, 99
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
test al, sil
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and di, 99
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or rax, -1561934807
jmp .bb_0.2
.bb_0.2:
test bl, al
or cl, 119
xor sil, dl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
