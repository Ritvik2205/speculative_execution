.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, esi
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
bts edi, 167
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 90
cmovno ebx, eax
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
bts ecx, 60
cmovns si, si
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
sub al, al
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
add si, 4
cmovns rdx, rcx
test al, bl
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdx
add esi, ecx
movsx edx, bx
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
cmovnp bx, ax
and rsi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rsi]
test eax, -544019457
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 62
cmovnp edi, ecx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
sbb dil, dl
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 48
adc edx, 97
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
cmp rsi, 69
or dl, bl
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
test ecx, 97
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
cmovnle rdi, rdi
or si, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
