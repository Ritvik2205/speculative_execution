.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rbx]
xor cl, 98
xor cl, dil
and dil, 125
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
test al, 91
test dl, 27
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and al, sil
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
xor dl, -43
not bl
and al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
