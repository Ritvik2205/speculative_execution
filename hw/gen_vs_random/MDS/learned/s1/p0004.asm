.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl eax, eax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
sbb cl, dil
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
or ax, -17790
and rsi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], eax
xor cl, 122
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
and rcx, 55
test bl, 106
lea ecx, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 95
xor al, -28
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
