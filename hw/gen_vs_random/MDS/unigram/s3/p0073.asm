.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rcx
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 7
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rcx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
cmovs esi, esi
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], eax
or rax, rdi
test ecx, 1044879383
or dil, sil
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], sil
cmovb ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
bt ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdi]
cmovns edx, edx
and bl, 100
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
