.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
xor dil, cl
jmp .bb_0.1
.bb_0.1:
or sil, bl
or rdx, -48
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test dl, 48
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
jmp .bb_0.2
.bb_0.2:
test al, 22
xor dl, -19
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 108
bt dx, si
xor bl, dl
and bx, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
