.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -107
adc rcx, 21
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
bts rdx, 7
mov sil, 17
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rdi]
add al, 112 # instrumentation
setl bl
adc dil, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 14
cmp bl, 27
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
