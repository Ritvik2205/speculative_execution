.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
sbb ebx, -54
movsx edx, ax
adc al, -86
cmp dl, sil
cmovb bx, dx
not edi
mov sil, al
test bl, -29
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
add dl, -8
imul rax, rbx, 31
add bl, 69 # instrumentation
cmovnbe dx, cx
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], -25
add al, 89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rdx
movsx dx, sil
sub eax, -494922880
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 57
btc cx, bx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], si
movzx rbx, dl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 54
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rsi
cmovno rdx, rbx
imul dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], esi
cmovnle ebx, ecx
mov ebx, 817819255
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 50
sub dil, -40
mov dl, dl
add rcx, -61
mov dil, 2
imul ecx
cmovp di, ax
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
cmovnb rbx, rsi
cmp dl, 95
test ebx, edi
add cl, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -37
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
