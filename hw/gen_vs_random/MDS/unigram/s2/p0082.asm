.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
cmovl ax, bx
cmovnbe ebx, ebx
cmovno dx, di
xor sil, cl
xor sil, dil
and al, 50 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and bl, -56 # instrumentation
cmovnle ebx, ecx
jmp .bb_0.1
.bb_0.1:
cmovns cx, ax
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
and rbx, 65
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
