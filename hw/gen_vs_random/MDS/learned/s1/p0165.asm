.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 19
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
xor bl, -27
test bl, 65
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
jmp .bb_0.1
.bb_0.1:
and rsi, 83
or al, -78
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
jmp .bb_0.2
.bb_0.2:
test dil, 46
jmp .bb_0.3
.bb_0.3:
test dl, sil
and eax, 454700988
test bl, dl
test ax, -20900
xor cl, 15
btr rdi, 129
cmovnbe rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
