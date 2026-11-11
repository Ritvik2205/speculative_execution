.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 65 # instrumentation
cmovnp cx, si
cmovnb esi, edx
and ax, 35
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
add dl, -10 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
adc edi, 80
cmovle ebx, edx
or dl, cl
sub al, 119
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rsi]
sub al, dl
cmovnle si, dx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 123
sub cl, 116
cmovo rcx, rcx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
sbb rax, 183833426
sbb dl, dl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
movzx esi, dl
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rcx]
cmovnbe rax, rcx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
xor al, 29
bt esi, 227
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -118
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
xchg edx, ecx
adc al, cl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rax
btc rdi, 167
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
sub dl, dl
sub eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
