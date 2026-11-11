.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx edx, di
test al, -99
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rdi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], 68
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -37
and rsi, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rsi]
lea si, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
neg ecx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
add al, -74 # instrumentation
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
or cl, bl
cmp cl, al
jmp .bb_0.2
.bb_0.2:
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
sub dl, 71
inc bl
lea ax, qword ptr [rdx + rax + 36518]
test cl, -120
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
