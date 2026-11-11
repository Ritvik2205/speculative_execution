.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
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
lock xor byte ptr [r14 + rdx], 67
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
test dword ptr [r14 + rcx], -1593756837
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
cmovp ebx, esi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -14271
test eax, -1634766116
and dl, dl
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
