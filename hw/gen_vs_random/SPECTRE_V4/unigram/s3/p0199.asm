.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 90
test esi, 20
movzx ebx, dl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
inc bx
and rax, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
cmp rax, 2115020203
imul sil
and rdi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rdi]
mov sil, sil
neg rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
add dl, 12 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 1
and rdi, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
test edx, 573099753
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], bx
sbb cl, al
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 75
movsx ecx, ax
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
add cx, 5
test esi, 6
cmovnbe di, dx
xor al, 29
test bl, 0
adc rbx, rcx
or edx, ecx
or cl, al
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 39
test bl, 24
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
test edx, 573099753
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 81
test ebx, edx
imul rdi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
add bl, 110 # instrumentation
movsx ax, bl
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
