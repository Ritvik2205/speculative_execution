.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc dx, ax
and cl, -3 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or bl, 84
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
or ax, 19243
cmovs edi, esi
test bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
xor bl, sil
bt ebx, 107
bswap rbx
or ax, -17790
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 87
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
xor al, 77
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 29
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 18
and eax, -872608366
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], -40
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
not dl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
