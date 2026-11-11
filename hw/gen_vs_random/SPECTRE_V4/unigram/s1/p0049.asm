.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sbb si, 83
cmovp rdi, rax
add bl, -26 # instrumentation
btr ebx, 65
neg ebx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
sbb rax, rcx
cmovnbe esi, edi
and rdi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdi]
add ax, -13169
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 16
imul cl
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
xor dil, al
btc cx, 240
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
cmovb dx, dx
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
sub cl, -74
cmovnbe ax, dx
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
bts eax, 209
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
xor dl, 51
and rbx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
sub dil, bl
bts esi, edx
cmp edx, 68
mov rbx, 9101099553822202722
add ebx, eax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 75
adc al, 36
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 67
xor cl, bl
cmp cl, 11
sbb al, 32
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 73
add al, -32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
cmovnz dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
