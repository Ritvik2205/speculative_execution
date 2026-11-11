.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, cx
btc di, ax
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
adc sil, cl
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
lea ax, qword ptr [rdx]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
adc rbx, 75
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
add dl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
lea rdi, qword ptr [rbx + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
bt rdi, rax
sbb cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
