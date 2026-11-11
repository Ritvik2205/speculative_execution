.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 95
cmovs rax, rsi
add bl, 56 # instrumentation
cmovle rcx, rbx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], ecx
cmovnz edx, esi
sub ecx, 78
mov sil, 40
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 3
add esi, ebx
add rdx, rsi
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
sub dil, -10
neg sil
and bl, dil
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 85
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
bts ecx, ecx
sbb eax, -984782068
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 99
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and bl, sil
cmovnz cx, ax
sub dl, 43
and cx, 17
sbb dil, al
cmp bl, 13
dec sil
test al, al
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
test al, dil
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
or dil, dl
cmovz dx, dx
cmovo esi, ecx
cmovp ax, bx
test cx, 13
and rcx, 0b1111111111111 # instrumentation
movsx rbx, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 85
add ecx, edx
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], eax
neg eax
adc dil, bl
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
