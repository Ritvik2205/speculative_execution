.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
test al, -7
and rsi, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
test bl, -9
bts rsi, rdi
and di, 99
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
xor sil, -46
jmp .bb_0.1
.bb_0.1:
and sil, -56
test al, 127
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
cmovnp rax, rdx
test dl, bl
test rbx, 85
or rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
