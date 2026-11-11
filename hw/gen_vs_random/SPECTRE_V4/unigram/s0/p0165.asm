.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, eax
btc ebx, 94
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
add esi, ebx
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], 110
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
add sil, -26 # instrumentation
btr esi, 82
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
sbb ecx, 1
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 50
mov al, bl
dec si
add dl, 48 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
cmovnbe rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 31
not di
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
cmovp rcx, rax
add dl, -114 # instrumentation
cmovl di, bx
sbb dl, -99
imul ebx, eax, 70
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 15
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 60
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rcx, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rcx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
cmovb ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 23
add bl, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
sub dil, dil
cmp dl, 82
cmp sil, bl
and rax, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 83
add dil, dil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
