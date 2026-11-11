.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -21 # instrumentation
adc rdi, 5
test eax, -818909344
mov dl, dl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovnbe cx, bx
and rdi, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rdi]
neg al
imul dx, bx
xor rbx, rax
btc rax, rdx
sub ax, 24441
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
sbb rax, 183833426
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
cmovns dx, di
and eax, -37
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
add di, -74
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], si
inc rsi
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
test eax, 1880179600
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
test rax, -344032571
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
add dl, 48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], dl
cmovb edx, ebx
movzx ecx, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
mul cl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
cmp bl, dl
add ecx, eax
test eax, -818909344
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
movsx rsi, bx
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
cmovle rax, rdi
cmp rax, 2115020203
and rsi, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rsi]
cmovl rdi, rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], esi
mul rbx
add eax, -1796699558
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
