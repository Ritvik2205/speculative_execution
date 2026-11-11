.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 52
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
xor cl, dl
and sil, 37
test al, -70
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
test ax, 7679
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 5
or ebx, 71
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
