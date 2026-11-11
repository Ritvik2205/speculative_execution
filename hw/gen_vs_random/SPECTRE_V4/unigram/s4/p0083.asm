.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
add al, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
xor rbx, -99
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmp al, bl
xchg cx, cx
imul dx, bx, 36
add al, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 74
and esi, 61
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
imul ebx, eax, -112
or eax, 1 # instrumentation
add al, 49 # instrumentation
adc al, dil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 88
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx]
movsx ecx, sil
test eax, eax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
sub rdx, rsi
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
xor rdx, 106
test edx, -38580719
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], cx
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
sub rax, rsi
and rsi, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rsi]
test rax, -405021090
not cl
adc bl, 97
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], dl
or sil, sil
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 98
or ebx, -78
sub eax, 490935921
add cl, 68 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
and dil, dl
sub dil, cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmp rdx, -49
and rsi, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rsi], 41
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], di
bts ecx, 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
