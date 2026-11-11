.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and al, 82
and ebx, 50
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rax], ecx
test dil, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
or dil, dl
bt dx, cx
jmp .bb_0.2
.bb_0.2:
test dl, -85
test al, cl
or dl, -97
or cl, sil
bt edx, esi
cmovnbe rsi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
