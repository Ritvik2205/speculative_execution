.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rax, rax
or eax, edx
or sil, dil
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
or rbx, -72
and al, 82
xor dil, -5
xor sil, -14
test sil, 41
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
xor al, 8
test al, bl
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
