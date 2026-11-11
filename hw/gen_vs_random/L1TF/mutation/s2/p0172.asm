.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
btc di, ax
imul bx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
lea ax, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
lea rbx, qword ptr [rsi + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rdi, rbx
sbb dl, cl
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 114
lea rsi, qword ptr [rsi]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
