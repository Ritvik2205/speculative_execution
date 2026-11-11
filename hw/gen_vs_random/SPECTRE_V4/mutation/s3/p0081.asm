.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 29
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], -68
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
test rdi, -795635070
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and esi, 61
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and eax, -2040347881
cmovbe dx, di
imul dx
bts di, 30
dec dl
test al, 114
mov dl, cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], -109
inc cl
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rsi
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
or al, al
add al, -112
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and dx, word ptr [r14 + rcx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rcx]
movzx edi, sil
mov rdx, -3088288992777791879
and ax, 13045
xor cx, -80
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
cmp eax, 89
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
adc rax, 253624080
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], -67
sub edi, eax
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 109
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], -60
and rdi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdi]
adc al, -86
xchg al, bl
cmovnz rdx, rax
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
movsx rcx, cl
add al, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
