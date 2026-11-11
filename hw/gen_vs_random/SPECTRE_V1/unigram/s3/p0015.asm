.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, 109
mov dl, 47
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
xor rsi, rbx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 9
xchg eax, edi
cmovnp si, di
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rax]
add cl, -80 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
cmovno rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rcx + 14]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
