.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
xchg rax, rbx
test rcx, rdi
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
mov al, sil
cmovle edx, ebx
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and eax, -1555813586
cmovl si, bx
and rdx, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdx]
and al, dl
cmovb cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
mul dl
or dl, -26
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx], 69
inc bx
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 31
btc eax, esi
adc cl, -86
cmovno edx, ebx
sbb di, -105
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rsi]
bt ax, 145
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
add cl, -69 # instrumentation
adc al, al
cmp dx, 13
and rbx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
cmovo ecx, edx
cmovz rbx, rdx
add al, 80 # instrumentation
mov cl, dil
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
cmovnz ecx, edx
cmovnle ax, dx
movsx di, dl
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
cmovnz rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
