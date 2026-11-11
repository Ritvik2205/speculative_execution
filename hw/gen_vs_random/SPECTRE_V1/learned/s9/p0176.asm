.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
lea eax, qword ptr [rsi]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and dl, -109
xor sil, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
test dl, -7
xor al, dl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
