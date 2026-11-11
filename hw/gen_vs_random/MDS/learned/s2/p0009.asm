.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -7
xor rdi, -9
and al, 106
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
or rbx, -72
or dil, cl
or al, 24
or al, -61
or sil, -78
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], sil
xor di, -83
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
xor sil, -14
xor ax, -6793
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
