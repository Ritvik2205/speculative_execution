.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], al
xor sil, 71
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], 38
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
or al, dl
xchg dx, ax
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 28
dec di
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
sub bl, bl
test al, 27
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], esi
cmovbe ax, si
adc ecx, 55
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 82
mov sil, al
cmp rdi, rdx
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rcx
bt ebx, esi
add dil, dil
sub rsi, -48
btc rsi, rbx
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
cmovno bx, di
xchg edx, eax
dec bl
cmovo si, dx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
cmovnz esi, ebx
xor dil, 117
movsx rbx, bl
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
cmovle rax, rsi
sbb rdx, 6
and edi, ecx
bts edi, 36
or dil, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv dil
mov cl, al
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], 80
sbb al, dl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], bx
and rbx, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
