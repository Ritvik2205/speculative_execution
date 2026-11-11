.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
xor di, -83
test bl, dl
test dil, -51
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dil, 12
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
xor cl, dil
or bl, bl
and ax, -4410
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
