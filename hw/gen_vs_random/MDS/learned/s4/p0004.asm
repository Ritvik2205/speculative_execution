.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and al, 84
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor al, -19
or dil, cl
and dl, -73
and rdx, 49
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
xor bl, -88
or al, -24
xor sil, dl
and al, cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
