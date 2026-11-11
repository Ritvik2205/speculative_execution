.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
xchg dx, cx
and al, 126
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
cmovnp ecx, eax
cmp al, sil
sbb dx, si
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rsi]
cmovnp ecx, edi
bts bx, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 32
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovo rbx, rdi
xor eax, 73
cmovbe di, cx
and bl, 44 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
