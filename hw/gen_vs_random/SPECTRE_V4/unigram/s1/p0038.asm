.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test si, 51
cmovle rbx, rsi
xor rax, 60
adc dl, cl
and rbx, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rax]
xor rbx, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 99
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
btc bx, di
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
cmp rbx, 65
test bx, -1599
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
cmp al, 70
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rax
and cl, al
dec rsi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
or ax, dx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
btc rbx, 13
movzx edx, cl
add al, 122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
cmovb ecx, eax
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnbe si, di
sub rax, -701741274
xor dl, 83
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], ax
test edx, 573099753
movzx rdx, cl
cmovnle si, si
cmovp dx, cx
bts eax, 209
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 89
add cl, bl
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 89
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
