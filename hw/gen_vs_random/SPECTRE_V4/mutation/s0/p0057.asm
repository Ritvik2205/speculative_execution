.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rsi]
add dl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], 104
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
sbb eax, 316213929
xor al, 23
adc eax, 1307735127
xchg esi, eax
cmovnle bx, dx
imul ebx, edi, -24
test dil, -26
and rsi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
sub rdi, -34
or bx, bx
xor rax, 1049851782
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 2
xor eax, 365940537
btr di, 245
bts dx, cx
or ax, 27604
sbb dl, bl
xor al, -113
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdx]
cmovnle rsi, rdi
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -124
adc si, -74
adc bl, dil
and rax, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -21
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
movzx di, cl
add bl, 54
xor esi, -82
and al, bl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], dx
btc edx, 164
and bl, 76
and rsi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rsi]
sbb al, 70
adc ax, 25365
cmovs eax, edx
and rsi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rsi]
and al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
