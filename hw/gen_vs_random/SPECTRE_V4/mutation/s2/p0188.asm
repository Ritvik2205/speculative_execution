.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, 72 # instrumentation
cmovle ax, dx
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
mul ax
sbb rsi, -115
adc ebx, 117
xor al, 29
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], bl
btc ax, dx
cmovnz di, dx
xor eax, 181978569
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 1
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], bx
adc ecx, -12
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
or dx, cx
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe esi, edi
inc edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rbx
cmovnbe rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -14
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
not rdx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 45
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovp rdi, rcx
movzx rax, bx
and si, 68
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
imul esi, edx
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
imul rsi
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -93
sbb eax, -1688332460
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
mul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
