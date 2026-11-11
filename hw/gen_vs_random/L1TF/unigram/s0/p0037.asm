.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
add al, 61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
add dl, -121 # instrumentation
cmovnp edx, ebx
mul dil
sub cl, sil
btc di, bx
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
add dil, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 6
add dl, 109 # instrumentation
sbb cl, 75
movsx ax, cl
lea rbx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
