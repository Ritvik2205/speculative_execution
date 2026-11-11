.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], bx
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], eax
sbb sil, 24
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 77
add cl, 9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
test di, -19523
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
bt di, ax
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rcx]
sub rcx, -74
xchg dil, dil
inc eax
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rdx
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
test ebx, 6
sbb ebx, edi
mov eax, 1596316323
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 37
xchg al, sil
add bl, 54
sub ecx, -107
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
cmovnle ecx, esi
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rbx
adc dil, -17
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
bt ax, cx
movzx rdi, sil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], cx
sbb bl, -79
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 38
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 25
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
btr ax, 109
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
movzx rcx, dx
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
adc bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rsi]
cmp al, 98
xor dil, -23
cmovnz cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
