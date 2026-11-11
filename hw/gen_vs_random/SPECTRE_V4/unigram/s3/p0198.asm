.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rdx
test al, dl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 45
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
cmovnl rbx, rsi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rsi
add cl, -82 # instrumentation
sbb ax, bx
test dl, bl
and rdx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rdx]
xchg edx, esi
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 2
sbb al, -62
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], 111
test dl, al
cmovnbe rbx, rbx
add sil, 110
xor al, 59
or dil, dil
and ebx, 74
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
cmovo eax, ecx
and rax, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rcx]
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
xor al, -2
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 14
dec sil
add dl, 31 # instrumentation
cmovnl ax, ax
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 31
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
xor cl, bl
sbb al, -47
cmovle esi, eax
add bx, 110
not eax
imul rdi
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 76
cmp cx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
