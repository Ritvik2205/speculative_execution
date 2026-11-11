.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], si
add dil, -75
adc al, dl
and rsi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], ebx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
test sil, al
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1194753120
sub rax, -1628299544
setp sil
cmovno ax, cx
lea di, qword ptr [rdi]
cmp cl, al
add bl, -23 # instrumentation
setnle bl
cmp rcx, 10
and rdx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
