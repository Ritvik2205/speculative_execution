.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rdi + rcx + 37]
not dil
lea eax, qword ptr [rsi + rdi]
test dil, 8
cmp bl, 80
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
add sil, sil
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
add al, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 1
bt bx, 8
jmp .bb_0.1
.bb_0.1:
add cl, 121 # instrumentation
cmovs eax, eax
add dl, 46
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and edx, ecx
cmovb bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
