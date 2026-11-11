.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and dil, sil
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
or sil, dil
and cl, bl
xor al, 99
test rsi, 66
xor di, 93
test sil, -96
and al, al
and eax, -574348013
xor cl, -13
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
test sil, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
