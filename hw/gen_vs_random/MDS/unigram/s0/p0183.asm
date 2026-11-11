.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
bt rax, 30
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
cmovnl rdi, rbx
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], cx
xor sil, 110
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
jmp .bb_0.1
.bb_0.1:
xor cx, -18
not al
not al
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
btc rax, 110
and bl, 108 # instrumentation
cmovns rax, rax
and cx, -2
bt di, si
xor rsi, -117
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
