.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 18
imul bl
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 1
sub sil, -50
test eax, 1561062795
and rdi, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
imul bx
add al, cl
add cx, 77
or ax, -15282
imul ebx, eax
cmovle rsi, rcx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], dx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
mov bl, bl
or ax, -15282
add ax, -15653
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and dl, cl
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
movzx rsi, di
mov dx, 64
and rdi, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rdi], di
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
add sil, 110
cmovo rsi, rsi
sub ecx, edx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 5
cmp sil, cl
sub rax, -701741274
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
add di, -74
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
