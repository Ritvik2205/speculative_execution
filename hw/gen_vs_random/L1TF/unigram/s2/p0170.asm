.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
add al, 22 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
add cl, -110 # instrumentation
setbe dil
neg al
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
add bl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
movzx rdi, al
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
lea rax, qword ptr [rsi + rbx + 20]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
add bl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
btc bx, 168
add dx, -51
lea ax, qword ptr [rsi + rbx + 35]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
