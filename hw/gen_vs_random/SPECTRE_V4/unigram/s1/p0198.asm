.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
cmovbe rsi, rdi
sub si, si
sbb eax, edx
bts si, 97
mov sil, bl
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
add al, 74 # instrumentation
cmovle eax, ebx
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
test rax, -1395313845
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
imul cx
and rbx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rsi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rsi]
sub cl, -127
adc dx, ax
add cl, 7 # instrumentation
adc ax, 24
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and cx, -117
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
add al, -27 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
or dx, 22
or ax, cx
mov dx, 24004
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 92
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rax, rdx
bt ecx, 25
bts rbx, rax
xchg rsi, rsi
sub edi, 73
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and dx, -107
add al, -64 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rax]
or eax, -863161215
and edi, -102
and rdi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdi]
cmovl si, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
