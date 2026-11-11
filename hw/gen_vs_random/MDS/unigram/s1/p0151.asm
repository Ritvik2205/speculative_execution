.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and bl, -89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and dl, -73
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
cmovnle cx, ax
cmovbe ebx, ecx
and rax, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -93
and al, 106
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rbx
btr rax, 56
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 17
cmovns bx, dx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
