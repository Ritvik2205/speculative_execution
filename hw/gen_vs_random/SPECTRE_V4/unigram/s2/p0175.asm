.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -106
xor dl, dl
add rbx, 69
test dil, al
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], eax
sbb cl, dil
and rdx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rdx]
not rdi
bt ax, cx
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
cmp bl, -79
or dl, dl
xchg edi, ebx
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
movsx cx, dl
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edx
and bl, -119
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 61
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
mov al, al
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dl
not cl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and dx, word ptr [r14 + rax] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rax]
add al, bl
movsx edi, ax
inc dl
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
imul si, ax, -75
cmovnp bx, dx
or cx, 23
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
movsx esi, dl
and ebx, -4
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
test dl, -81
and dil, -120
mul al
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rbx
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
cmovnle ecx, eax
cmovnz cx, si
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
cmovno bx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
