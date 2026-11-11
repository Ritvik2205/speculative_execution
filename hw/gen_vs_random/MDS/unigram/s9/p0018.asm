.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rax, rdi
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
test bl, al
and bl, 120 # instrumentation
cmovnp bx, ax
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 71
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], -68
or bl, dil
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], dx
cmovnp eax, edi
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
cmovns ax, di
not al
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
