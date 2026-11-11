.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, sil
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
add dl, -86 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], 22
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
sub bl, cl
add bl, 39 # instrumentation
cmovo ebx, esi
add dl, 38 # instrumentation
setp al
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add ax, 6980
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
dec cl
add dil, 103 # instrumentation
cmovno edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
