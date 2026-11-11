.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rcx, 115
and al, -64 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
cmovz rbx, rsi
btr di, 109
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
or eax, -1642752131
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 100
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmovp esi, edi
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdi]
bt eax, eax
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
or dl, 22
test dl, al
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rsi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
or dl, al
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], ebx
add dil, 63
cmp bx, 54
and sil, 65
test dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
