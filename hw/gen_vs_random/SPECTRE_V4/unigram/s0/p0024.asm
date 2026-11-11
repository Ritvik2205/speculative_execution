.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], edx
movsx esi, di
xchg dx, di
adc ebx, 51
add bl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rbx]
xchg al, sil
btr rbx, 90
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rcx]
cmovnz rax, rax
test rdi, 1222000858
add al, -17 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
mov bl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rsi]
add edx, ecx
btr esi, esi
or eax, 1001462340
and rbx, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rbx]
sbb dx, 2
sub eax, 1050143384
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rbx]
add dl, -85 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
add ebx, -57
bts di, 30
add al, 17 # instrumentation
cmovnle edx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 39
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
cmovb rcx, rcx
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
or edx, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
add eax, 1936378991
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
neg rcx
xchg rax, rcx
test sil, dil
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], -19
movzx cx, cl
btr ax, di
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rdx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdx]
xor rcx, -111
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
