.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and ax, 25351
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
add bl, -95
sbb sil, -78
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
sbb dil, -93
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
btr ax, 197
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add al, dl
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
imul dl
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
jmp .bb_0.2
.bb_0.2:
bt edi, 134
and edx, -62
and rcx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rcx]
xor eax, -1721938664
bswap ecx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add al, 19 # instrumentation
setnz bl
adc cl, bl
lea rdi, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
