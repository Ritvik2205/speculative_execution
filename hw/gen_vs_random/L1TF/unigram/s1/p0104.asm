.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add ebx, 2
cmovnb si, dx
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rdi]
or rax, rax
setnb al
setno al
lea rdi, qword ptr [rcx]
setz al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
add dl, -52 # instrumentation
adc di, 25
test dil, dil
cmp dl, -56
neg al
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
