.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 60
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
test sil, cl
xor di, -83
and bx, 47
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
and cl, -71
not dil
xor rax, -773894210
xor rax, rdx
xor sil, -46
and al, 87
or al, 37
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
