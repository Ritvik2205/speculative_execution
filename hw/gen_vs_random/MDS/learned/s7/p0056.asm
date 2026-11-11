.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
or dil, sil
xor rdi, -9
test dx, 16353
test sil, dl
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
test ecx, -1843375753
and ax, 27170
xor sil, -14
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
