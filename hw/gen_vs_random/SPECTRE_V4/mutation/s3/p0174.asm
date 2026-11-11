.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 2
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
test rdi, 1222000858
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and esi, 126
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and eax, -1555813586
cmovbe dx, di
imul dx
bts di, 72
dec dl
test al, 57
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
inc cl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or al, al
add al, -3
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
mov dil, al
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], cl
sbb al, 54
mov sil, dil
add bl, al
imul sil
and ebx, -122
sbb cl, dl
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
cmovnbe rsi, rbx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovz edx, edi
add rcx, rbx
adc rdx, -90
or al, al
btr si, 114
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
test cx, 7280
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 112
movsx ebx, ax
cmp al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
