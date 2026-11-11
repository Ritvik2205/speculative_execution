.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rbx, rax
or si, 0b1000000000000000 # instrumentation
bsr bx, si
cmovnl eax, esi
bts edx, 189
cmovnb ecx, edi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and al, -68 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], bl
and cx, -2
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovp dx, si
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
test dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and dl, -99 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and bl, 68
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 29
not dl
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
