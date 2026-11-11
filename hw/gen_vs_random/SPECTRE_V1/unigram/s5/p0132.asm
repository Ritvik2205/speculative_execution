.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 96 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdi]
sub bl, cl
btr rsi, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 25
add ecx, 25
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
or cl, -62
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
add cl, 72 # instrumentation
cmovnl ax, bx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 38
setns cl
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor dl, al
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
