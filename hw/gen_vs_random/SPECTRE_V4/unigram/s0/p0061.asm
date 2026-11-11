.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
sbb al, dl
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rbx
test cl, bl
test rbx, 55
mov bl, bl
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
add dl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rbx
cmp bl, 13
movzx si, sil
test eax, 1561062795
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rbx]
xchg rbx, rcx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
xor rdx, rsi
and dx, 1
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
add bl, -115 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 2
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 87
movzx rax, bx
test sil, al
add bx, 110
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
sbb di, -76
or ebx, 86
xchg ebx, eax
adc dil, cl
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 100
test rsi, 83
add cl, -37 # instrumentation
adc eax, -39
add ebx, eax
movzx si, dil
bts rbx, rsi
add dl, 31 # instrumentation
cmovnl si, si
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and dl, 92
sub dil, -10
sbb al, -62
add ebx, 3
test edx, 573099753
xor cl, -54
test bl, dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], cx
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
