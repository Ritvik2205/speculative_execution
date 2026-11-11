.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], ax
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
xor rsi, rax
and cl, -108 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 33
bts rcx, 76
test rsi, 30
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 10
and ax, -4410
test cl, 54
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and dl, 84 # instrumentation
cmovbe dx, ax
test bl, sil
cmovnbe rdi, rsi
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
xor rdi, -9
cmovb rax, rbx
xor si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
