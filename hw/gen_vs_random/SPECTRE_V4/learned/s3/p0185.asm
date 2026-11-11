.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 20
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
mul ax
add cl, al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 90
and dil, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 34
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 10
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 77
and dl, al
adc rdi, rdx
add bl, bl
xor cx, di
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
not bl
and rsi, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rsi]
cmovnp si, di
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
test rax, -331426050
and bl, 44 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and dil, al
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and dil, sil
xor cl, bl
and eax, -37
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
cmovnl rbx, rdx
add dl, 116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], 32
cmp ax, -15031
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
imul cl
or al, 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
