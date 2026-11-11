.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
or dl, al
and rsi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rsi]
xor ax, 17976
cmovl rax, rsi
adc cl, cl
bt rdx, rbx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
test cl, cl
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], sil
and rdi, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdi]
lea rbx, qword ptr [rsi + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
lea ebx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
