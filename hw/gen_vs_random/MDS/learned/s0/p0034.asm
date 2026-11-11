.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
jmp .bb_0.1
.bb_0.1:
test al, 22
btc rbx, 118
or dil, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
and dl, -73
xor al, 34
and sil, 89
or bl, -54
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
or bl, 43
or dl, -89
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
