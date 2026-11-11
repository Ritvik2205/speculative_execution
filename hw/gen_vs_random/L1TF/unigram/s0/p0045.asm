.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, 15
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
add bl, -4 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
lea rsi, qword ptr [rdi + rax]
cmovnp rdi, rdi
sbb cx, di
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
add al, 22 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 12
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
