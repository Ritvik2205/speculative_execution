.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
or bl, dil
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 25
test al, sil
test edi, -1252846009
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
or al, -58
test dil, -80
and edi, 23
or al, -58
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
