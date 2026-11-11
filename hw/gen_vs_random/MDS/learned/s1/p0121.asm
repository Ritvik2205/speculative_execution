.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 7
not bl
test bl, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
bt bx, si
or dx, 125
xor bl, dl
not bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test eax, 424329527
xor dil, -70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
