.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], edx
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
sub bx, dx
sub rbx, rdx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
add rcx, -61
inc eax
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], bx
movsx ax, sil
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
or cx, dx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
xor cl, 13
test rdx, -1074289902
sub rax, rsi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
imul rbx, rbx
bt ebx, 21
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
bswap edi
bts ax, 159
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub cl, cl
cmovle rax, rbx
bt si, 18
imul edx, ebx
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
sub sil, -35
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
cmovnz rbx, rcx
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
btr rdi, rbx
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
and ax, -14374
neg bl
test cl, -31
add bl, -43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
cmovnle eax, esi
test dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
