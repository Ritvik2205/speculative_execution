.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, di
cmovp ebx, esi
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rax, rdi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and bl, 121 # instrumentation
bt rdi, 138
or dl, dl
or dl, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
cmovb di, si
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
and dl, 13 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
