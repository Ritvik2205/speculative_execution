.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
add bl, 103 # instrumentation
cmovno ecx, ebx
add dil, 24 # instrumentation
lea rdi, qword ptr [rdi]
add al, 19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], dx
adc cx, -30
cmovnle rsi, rcx
add al, 72 # instrumentation
cmovns bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
