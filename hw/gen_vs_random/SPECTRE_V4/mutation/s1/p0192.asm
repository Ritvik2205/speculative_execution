.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rax, 1827025056
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
imul ebx, eax, -112
movzx rdi, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], di
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
btc edi, 125
add bl, 54 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
btr edx, 160
neg rbx
sub dx, si
and rdi, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rdi]
xchg cx, si
sub bl, cl
test al, -85
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdx]
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
cmovns rsi, rbx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
add ax, 65
adc cl, 31
and rdx, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
or rbx, -108
or cl, 12
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rbx]
adc al, -59
adc cl, -86
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
dec bx
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rbx]
cmp dl, -82
cmovl rcx, rsi
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -23
bt bx, ax
bt cx, 31
add dl, 59 # instrumentation
cmovno rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
