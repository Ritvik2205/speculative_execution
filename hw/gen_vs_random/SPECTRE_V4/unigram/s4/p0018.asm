.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rsi
and al, dl
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
sbb cl, -104
xor sil, 56
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, eax
btc rax, rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rdi]
or esi, edx
add bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], di
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
sbb cl, -104
sbb rsi, rbx
test ax, 23760
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 32
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
bts eax, 209
adc dl, 28
bts rdi, rdi
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 41
btc cx, 240
add bx, 110
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 74
cmovnb dx, dx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and al, dil
and rdi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
or dl, sil
add al, dil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
mov dl, -34
mov sil, sil
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov ebx, esi
and rdi, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rdi]
and sil, cl
mov rax, -8696242625349627833
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
