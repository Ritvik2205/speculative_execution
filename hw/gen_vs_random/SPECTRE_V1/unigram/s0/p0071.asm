.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 24
cmovl edx, edi
adc bl, dil
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
mov rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 31
and rsi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rsi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
