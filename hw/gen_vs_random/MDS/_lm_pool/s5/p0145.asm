.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 24
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test al, 66
xor al, cl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and sil, 74
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and cl, dl
not dil
or al, 25
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
and dl, -73
or sil, -49
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
