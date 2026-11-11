.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 3
cmovbe rcx, rsi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], -47
test ax, 5320
and rdx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
jmp .bb_0.1
.bb_0.1:
xor si, bx
mov di, bx
and bx, di
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
or rdx, rsi
add cl, cl
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rsi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rax]
and bl, al
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 93
btc rbx, rax
and rdx, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and bx, -21
and cx, 24
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 90
add al, -75 # instrumentation
adc al, 24
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
or bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
