.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, esi
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
add dl, bl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
test rbx, 52
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rdx], eax
mul ax
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
add ecx, 64
movzx eax, dil
sub al, 98
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
sub al, sil
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 67
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rax
cmp rbx, 29
cmovnbe ax, dx
or si, 0b1000000000000000 # instrumentation
bsr dx, si
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
imul edx, esi
and bl, sil
add bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rax
movzx rbx, ax
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
sbb rdi, 43
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
xor bl, 93
mul esi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 20
sub dl, bl
xor cl, -101
cmovp eax, eax
add al, 5
cmovo rsi, rbx
cmovb rbx, rcx
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 6
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
