.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp dx, ax
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
sbb dl, dil
cmp eax, -127
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
add cl, cl
lea rcx, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
add dl, -40 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
cmp al, 27
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -101
sbb si, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
