.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], bl
xchg ax, ax
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
movzx dx, al
not eax
or rax, rbx
bts rdi, 49
or ebx, -82
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 12
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
add al, -4
cmovo cx, bx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], -51
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
bswap edi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 107
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
or bx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or ax, 57
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
and bl, -119
imul ebx, edi, -24
btr di, 245
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
sbb eax, 40509622
xor eax, 1760581269
adc bl, dil
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
test dil, -58
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
xor al, 23
xor rax, 1049851782
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
adc si, -74
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
