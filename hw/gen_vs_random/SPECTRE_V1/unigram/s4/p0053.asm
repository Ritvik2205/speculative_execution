.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea cx, qword ptr [rcx + rsi]
mul di
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
add bl, 36 # instrumentation
setnl sil
cwd
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
cmovb esi, esi
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
