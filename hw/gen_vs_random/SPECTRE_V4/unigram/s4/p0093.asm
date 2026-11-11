.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe rax, rcx
bts di, 30
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 57
adc al, sil
add ecx, 99
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], edi
adc rbx, rax
movsx ebx, dl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 72
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 56
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], -30
movzx ax, cl
add cl, -62
sbb dl, cl
movsx rax, dx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rbx]
sbb dl, -71
movsx eax, sil
cmovle rcx, rcx
btc rbx, rcx
test al, -38
xor al, al
add cl, 31 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
adc sil, al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], bl
cmp edx, -95
cmovnp rcx, rbx
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rcx
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
cmovnz rdx, rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
xchg rbx, rax
sbb al, bl
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
or di, 29
neg rcx
bt rax, 59
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdi]
sub si, dx
cmovnbe ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
