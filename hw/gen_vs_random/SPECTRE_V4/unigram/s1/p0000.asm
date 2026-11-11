.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rsi]
add dil, al
mov cl, dl
cmp bl, cl
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
btc rdx, rdx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
test al, 18
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], rbx
cmovnb ecx, edx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
imul edx, eax, 36
and rdi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdi], eax
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 49
mov dl, 81
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
or edx, -128
cmovnb ebx, eax
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rdi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdi]
and bl, al
cmp edx, -95
and ax, -4731
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
add dl, 46 # instrumentation
adc dx, cx
and rdx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 17
cmovp rsi, rax
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
cmovnz rbx, rdi
cmovnb si, bx
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 94
cmovnz ebx, esi
cmovb rax, rax
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 67
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
xchg esi, edx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
