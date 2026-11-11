.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 113 # instrumentation
setnb cl
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
add al, 36 # instrumentation
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -123
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
xchg rax, rsi
and rax, -175411684
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add cl, -56 # instrumentation
sbb rdi, 82
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
setnle sil
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
cmp bl, bl
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
add cl, 112 # instrumentation
movzx ebx, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
