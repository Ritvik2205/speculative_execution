.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
add bl, bl
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
sub al, 10
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
cmp dil, cl
and rsi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bts word ptr [r14 + rsi], di
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
