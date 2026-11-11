.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 24
and rdi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdi]
and bl, 68
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
test eax, 1729060510
or sil, al
and bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
or al, -58
bt ebx, edx
or bl, dil
test al, 127
not sil
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
and ax, 339
or al, -75
and di, 91
and al, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
