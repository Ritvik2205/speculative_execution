.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
or ax, -30990
cmovnbe ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdi]
cmovle rsi, rdx
imul dx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
adc bx, 52
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], eax
mov bl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 9
add dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
sub ax, cx
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rdx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 18
xor al, dil
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rcx]
xor rdx, 106
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], si
and rax, rdx
mov sil, bl
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
xchg edx, eax
mov al, 90
mov ax, 31802
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp ebx, eax
cmp bl, al
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
xor dil, 117
xor edx, eax
and rax, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], cl
cmp bl, dl
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and di, -65
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
