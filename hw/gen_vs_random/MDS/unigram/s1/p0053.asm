.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], ax
and cl, -23 # instrumentation
cmovno ecx, ebx
btc ecx, 15
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
xor sil, -14
and dl, 125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
cmovs cx, dx
bt rdi, rbx
xor dl, bl
cmovno rdi, rax
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and bl, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], -86
and rdi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
