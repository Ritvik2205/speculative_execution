.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
movsx di, cl
cmovnl cx, cx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 35
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
xor rcx, 7
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 89
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 3
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
cmovp rcx, rdx
lea ebx, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
