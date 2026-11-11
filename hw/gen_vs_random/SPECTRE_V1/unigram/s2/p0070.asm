.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
setbe al
cmovno dx, bx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 60
js .bb_0.1
jmp .exit_0
.bb_0.1:
movzx dx, dil
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
setp dil
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -1157135998
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
adc rcx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
