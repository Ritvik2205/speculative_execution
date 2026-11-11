.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rbx]
or edx, 75
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test sil, 29
test dl, dil
add al, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
bts rdi, rsi
cmovns esi, ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
cmp edx, 99
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
