.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and al, -68
and rbx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
xchg dl, dil
lea rdx, qword ptr [rsi + rax + 92]
lea rax, qword ptr [rbx + rdx + 38]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 75
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
