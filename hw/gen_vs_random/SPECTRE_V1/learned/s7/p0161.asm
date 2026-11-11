.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rsi]
sub cl, sil
and eax, 933895314
lea edi, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 89
add sil, -68
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
adc cl, bl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub al, 63
test cl, -24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
