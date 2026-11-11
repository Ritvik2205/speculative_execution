.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 35
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
bts rdx, rsi
and rax, 54
add bl, bl
imul si, di
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
and rdi, -2
movzx di, cl
and cl, -26 # instrumentation
cmovnp rdi, rcx
sbb eax, -1688332460
xor ax, cx
add cl, -42 # instrumentation
adc dl, cl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
or si, 45
sbb al, -62
cmovnle cx, cx
cmovns cx, cx
setle bl
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], esi
and dl, al
sub al, 119
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
adc al, al
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rax
lea rcx, qword ptr [rax + rdi + 99]
mov dil, sil
bt esi, 227
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
or rax, rdx
xchg esi, edx
cmovnle rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
or dl, dil
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
cmovle rax, rbx
add rcx, rdi
sbb eax, 1081973675
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
or ax, -12775
add eax, -1796699558
bt ebx, 228
add bx, 110
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
