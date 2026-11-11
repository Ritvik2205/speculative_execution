.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
sbb cl, -11
or sil, bl
inc al
xor bl, dl
xor di, 30
jmp .bb_0.1
.bb_0.1:
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor rsi, rax
sbb bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
