.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
or eax, -1434249782
add cl, cl
dec rdi
add bl, -72
or bl, cl
cmovle edx, esi
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
add dl, al
adc rdi, rdx
cmovnle si, cx
test eax, -544019457
mul rbx
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
or dl, 56
dec dl
or bl, cl
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
add al, al
bswap rbx
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
