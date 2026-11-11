.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 56
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 99
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and bx, -118
or cl, al
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 100
lea rbx, qword ptr [rsi + rsi]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
add bl, 21 # instrumentation
adc bx, 6
setle cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
lea rbx, qword ptr [rax + rax + 15]
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
cmp di, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
