.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, ax
adc sil, cl
imul bx, cx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
lea ax, qword ptr [rdx]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
jmp .bb_0.1
.bb_0.1:
lea rdi, qword ptr [rbx + rax]
sbb cl, dl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
adc rbx, 75
bt rdi, rax
add dl, -76 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
