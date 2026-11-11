.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdx, -49
adc dil, 112
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
cmp si, 109
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 73
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
test dl, 114
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
imul di
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
cmp bl, cl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
cmovnz rdx, rdi
mov bl, sil
and rax, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rax]
test si, 67
adc dl, cl
add dl, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], esi
and ecx, eax
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi], 49
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 51
add dl, 70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
sbb rdx, rdi
and rax, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
or al, 27
movsx di, cl
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
xor rdx, 106
mul al
xor sil, 45
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
adc sil, sil
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 44
adc rbx, 60
xor sil, 44
add dl, -35 # instrumentation
mov cl, dl
sbb dil, al
cmovns dx, di
and rsi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
