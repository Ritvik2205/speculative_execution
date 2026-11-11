.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 83
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
not rsi
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], dx
cmovs cx, bx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 74
not eax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
bt di, si
and bl, 68
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 37
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
