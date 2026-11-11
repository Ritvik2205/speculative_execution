.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
and bl, al
jmp .bb_0.1
.bb_0.1:
test rdx, rbx
test dl, sil
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and sil, -9
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor cx, -18
or al, -58
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
xor dil, sil
xor bl, al
or dl, -21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
