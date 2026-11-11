.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdi]
add sil, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
xchg edx, esi
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rbx]
bt di, di
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
