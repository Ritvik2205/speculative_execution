.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
cmovnz rdi, rax
imul edi, eax
mov al, al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
adc ax, 25365
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
neg rax
cmovbe bx, cx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
cmp rcx, rcx
xor rax, rsi
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
xor dl, dl
add eax, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
add bl, cl
adc cl, al
sbb al, 66
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax], 10
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ebx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rsi], 61
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
imul di
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
mov rdx, -3088288992777791879
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 65
btc dx, si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rdi]
dec ax
and rax, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rax]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
bt rsi, 242
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
