.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, bx
or sil, -78
or ebx, -15
xor rdi, -9
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test cl, 73
test eax, 1729060510
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
test eax, -571234566
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test al, bl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.1
.bb_0.1:
or al, -22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
