.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
test sil, 17
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 4
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, -80
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and al, -8
cmovnbe edx, esi
jmp .bb_0.2
.bb_0.2:
and bl, 121 # instrumentation
bt rdi, 138
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or dl, dl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
or dl, al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovb di, si
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovp ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
