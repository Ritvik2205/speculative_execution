.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cbw
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
test edi, 72
cwde
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
add al, -73 # instrumentation
setnbe al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rax, rcx
add sil, 73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
lea rdx, qword ptr [rbx + rsi]
bt eax, 127
add al, -125 # instrumentation
cmovb eax, ebx
add dil, 63 # instrumentation
cmovl di, bx
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rcx]
movzx ebx, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
