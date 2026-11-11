.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
jmp .bb_0.1
.bb_0.1:
or cx, 39
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
or bl, -52
jmp .bb_0.2
.bb_0.2:
xor dl, sil
xor al, -4
or al, -17
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
