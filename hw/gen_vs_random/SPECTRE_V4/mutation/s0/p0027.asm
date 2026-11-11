.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 16 # instrumentation
cmovnz ax, cx
imul dl
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
cmovbe ecx, eax
or al, -47
cmovp rsi, rdi
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
add dl, 47 # instrumentation
cmovnle bx, dx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
btr rax, rbx
or dl, dl
cmp cl, bl
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
btr rax, 187
neg al
bswap edi
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and al, bl
and di, -34
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
cmovnbe rsi, rdi
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
movsx dx, al
sub dl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
adc dl, al
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
or bl, -35
mov dl, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
add dl, dl
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
imul bx, bx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
