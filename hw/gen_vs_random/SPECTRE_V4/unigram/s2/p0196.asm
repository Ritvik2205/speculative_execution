.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
or dil, bl
sbb edi, -94
sbb cl, dl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
cmp ebx, edx
mov ecx, -405458789
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 87
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
sbb rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
not rdi
and rdi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdi], 12
bt di, 8
bt rdx, rdi
adc bl, 35
xchg ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], 49
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 79
add bl, -24 # instrumentation
cmovnbe si, si
xor si, -73
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
cmp cl, al
cmp al, dl
add dl, dil
movsx cx, bl
movzx rsi, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
cmovbe rbx, rcx
or di, 122
cmovnp eax, edx
cmovo dx, si
test sil, dl
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx]
movzx rax, bx
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rdi
or rsi, rax
sub cl, sil
test cl, -10
cmp al, -122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
