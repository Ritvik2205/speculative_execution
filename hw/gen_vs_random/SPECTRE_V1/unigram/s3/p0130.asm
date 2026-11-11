.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -109
add dl, -86 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
seto dl
adc dl, cl
movzx ebx, al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -68
mov ecx, eax
adc cl, cl
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
lea eax, qword ptr [rsi + rsi + 32]
and rcx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
