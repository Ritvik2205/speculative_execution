.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp cx, cx
and cl, -109 # instrumentation
cmovns rax, rax
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
cmovnz rdx, rcx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], sil
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
not eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 3
or al, al
and rsi, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rsi]
and bx, si
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
btc rdi, 6
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
btc rsi, rax
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
