.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
add al, 18
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
sbb al, -14
lea ecx, qword ptr [rax]
cmp al, sil
and sil, -55
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
and rdi, rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
