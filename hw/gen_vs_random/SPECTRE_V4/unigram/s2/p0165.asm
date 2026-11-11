.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
mul dl
cmp dil, dl
btr si, 114
and al, dil
sbb edi, edi
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
add dil, 71 # instrumentation
cmovnle rdx, rdi
sub dil, al
cmovno rdi, rdx
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
or cl, al
cmp dl, dl
test bl, -16
xor cx, -80
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 97
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, 101 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
test di, -19523
sbb rax, rbx
bt rsi, rsi
and rcx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
imul al
adc ecx, 55
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
xchg rdx, rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 32
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdi
imul di, di
and bx, 16
test sil, 68
add dl, sil
sbb sil, -124
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
sbb dil, sil
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
