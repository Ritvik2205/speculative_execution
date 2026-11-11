.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdx, rdi
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
cmovb edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -60
imul rax, rdi, 109
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
add al, 9 # instrumentation
adc al, cl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 72
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
