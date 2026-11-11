.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul si
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
sub al, 63
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, -77
xor al, -74
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and cl, -57
add al, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rcx]
add bl, 78 # instrumentation
adc si, -91
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
add cl, bl
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
