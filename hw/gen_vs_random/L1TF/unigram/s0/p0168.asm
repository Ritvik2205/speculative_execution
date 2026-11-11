.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
lea rcx, qword ptr [rax + rax + 2]
and rsi, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
lea ax, qword ptr [rdi + rdi + 73]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
sbb dil, sil
sbb dl, 5
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 33
lea si, qword ptr [rax + rsi]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
add cl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
