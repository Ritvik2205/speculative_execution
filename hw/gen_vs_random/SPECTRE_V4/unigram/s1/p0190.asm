.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rax, rbx
bt ecx, edi
mov rdx, rax
cmovnp edx, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], sil
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 17
inc bl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
mov dil, dil
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], bx
cmp dl, al
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
cmovz ebx, edx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], edi
cmovnle rax, rax
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 65
inc rax
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], bx
xor dx, 47
sub edx, eax
and dl, sil
and rax, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rax]
add cl, dil
cmovo esi, ebx
add dx, -90
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovnp eax, ebx
test al, al
and ax, 35
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
imul dx, ax, 23
sbb ax, -19255
cmp rcx, 100
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
xor rcx, rdi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], bl
test rdi, -1876639003
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
