.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, bx
movsx edx, dl
mov rcx, 93
xor bl, 95
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 6
and rdx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
bswap rdx
add al, 125 # instrumentation
adc al, dl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 15
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
or bl, dil
and rax, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
