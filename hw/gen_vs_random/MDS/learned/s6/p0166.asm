.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, esi
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
test dil, -51
or al, -24
xor sil, cl
jmp .bb_0.1
.bb_0.1:
test eax, 1729060510
xor cl, 98
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or rcx, -17
or dx, 125
or al, -78
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rax, -978188247
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
