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
or bl, -98
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
or ax, 19243
cmovs edi, esi
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
cmovnz ax, si
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
bt ebx, 107
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
or rdx, rax
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 73
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
adc bl, 25
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
or al, bl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], al
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], sil
lea bx, qword ptr [rsi]
or al, -8
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
cmovp ax, cx
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
