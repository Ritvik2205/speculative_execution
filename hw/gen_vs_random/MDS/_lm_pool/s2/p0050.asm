.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
xor al, 34
test dil, -80
test al, 66
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and al, al
bts rax, rcx
test sil, -96
or dil, -71
or ax, 85
test ebx, -2015966884
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
