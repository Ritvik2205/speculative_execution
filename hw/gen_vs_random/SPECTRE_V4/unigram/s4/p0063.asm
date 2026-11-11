.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, sil
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
cmovo eax, ebx
or edx, -128
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], di
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 99
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
adc si, -110
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
or cl, 66
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
xchg bx, bx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
bswap ecx
cmovle di, bx
neg ax
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1308203108
test bl, -91
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], bl
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
or sil, sil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 73
and rbx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rax]
xchg rdx, rcx
mov eax, edx
sub rax, 1914398062
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], rsi
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovo edx, eax
not bl
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
sbb si, 78
and rbx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
xor cl, -15
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 17
and al, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
