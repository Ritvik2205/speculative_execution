.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb edx, ebx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
cmovnl si, di
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dil
btc ax, di
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnle esi, edi
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 39
and rsi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
sub eax, -523763262
xor dx, 46
add rcx, rsi
add al, 122 # instrumentation
cmovns edx, eax
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
cmovb si, si
test edx, 573099753
add dl, 48 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], cx
or dil, al
sub al, al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
movzx bx, bl
xor edi, 3
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
bts rdx, rdi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 67
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 78
imul ebx, esi, 27
adc sil, dl
xchg edx, ebx
xor cl, -54
sub esi, 32
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], bx
test sil, bl
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 35
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
inc cl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
sbb dl, -99
add cl, cl
add di, -74
add cl, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
