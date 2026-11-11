.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 82
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
adc rcx, 70
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
bt ax, dx
cmovp ebx, eax
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], bl
mov dl, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
inc cl
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
add al, -27 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 16
add dl, 6 # instrumentation
adc rax, -384715932
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
