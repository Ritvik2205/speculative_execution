.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
xor rcx, -2
or ax, 16560
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
test eax, 1729060510
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
and sil, 8 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rsi]
and dl, 120 # instrumentation
cmovnz eax, edi
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
bt eax, edi
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rsi, 90
and rdi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rdi]
and dl, -73
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rcx
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovb ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
