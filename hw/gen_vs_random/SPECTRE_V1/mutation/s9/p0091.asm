.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not bl
lea di, qword ptr [rdi + rdi + 8444]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
adc edx, edx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmp bl, bl
bt ecx, eax
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rax], rsi
add bl, 4 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
