.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, cl
or al, al
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 68
xchg sil, sil
lea rsi, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
setnl cl
and rdi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
lea dx, qword ptr [rax + rax]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
adc cl, -18
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
