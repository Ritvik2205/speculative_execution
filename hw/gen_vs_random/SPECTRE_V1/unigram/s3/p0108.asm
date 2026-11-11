.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], si
cmp dl, 34
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
mov sil, sil
lea ax, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rsi]
movsx rax, cl
and sil, dil
sub esi, ebx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 22
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
