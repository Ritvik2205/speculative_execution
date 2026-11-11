.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -31
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
jmp .bb_0.1
.bb_0.1:
or al, -75
jmp .bb_0.2
.bb_0.2:
or bl, dl
jmp .bb_0.3
.bb_0.3:
test dl, cl
jmp .bb_0.4
.bb_0.4:
xor al, 34
or sil, -49
and rsi, 94
and dl, dl
cmovnp rax, rsi
test eax, 424329527
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
