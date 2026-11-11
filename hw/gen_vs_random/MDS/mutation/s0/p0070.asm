.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, dl
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
cmovb di, si
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and bl, 121 # instrumentation
bt rdi, 138
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or dl, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 67
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
cmovnz cx, di
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
cmovp ebx, esi
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
