.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
test dl, dil
xor bl, al
and ax, 339
xor bl, 67
or al, sil
and al, cl
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or dl, -31
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
test dl, -85
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
