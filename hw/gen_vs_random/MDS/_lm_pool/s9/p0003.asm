.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, cl
and rsi, 96
test si, 43
or al, dil
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
test edx, -1561252782
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test dl, al
xor dx, 32
and ax, 339
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
test sil, al
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
bts edx, 189
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
