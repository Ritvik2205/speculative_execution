.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
xor al, 102
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
neg dl
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
not ebx
cmovb edx, eax
and rcx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rcx], ax
cmovnle esi, ecx
bt edi, eax
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
mov dil, -118
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 98
test dil, 47
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
or di, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv di
xor dl, 41
or edx, -127
sbb ecx, 37
cmovnle eax, edx
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
cmovnle ecx, eax
or bl, dil
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
dec ecx
cmovnb cx, cx
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
cmp cx, 22
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 17
and rax, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rax]
btc bx, 73
add cl, -82 # instrumentation
sbb di, bx
cmovnle eax, edi
or dl, 56
cmp rdx, 64
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
movsx ebx, ax
adc al, dl
adc al, cl
add dl, 41
mov cx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
