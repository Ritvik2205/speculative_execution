.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
cmovnb ax, si
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], bl
or al, al
and bl, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, ecx
cmovnl ecx, edx
cmovp ax, ax
or eax, -1642752131
and rdi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 66
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
xor al, -28
btc di, cx
bts di, 94
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
