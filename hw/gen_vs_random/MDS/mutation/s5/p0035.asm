.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor dil, 124
cmovp edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -20176
test eax, 158941032
and dl, dl
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
jmp .bb_0.2
.bb_0.2:
or dl, -21
bts rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
test bx, 25542
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
cmovl rsi, rdx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -884248205
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rbx
test cl, cl
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rbx
bts dx, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 77
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
cmovb bx, si
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
not rsi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
or al, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
