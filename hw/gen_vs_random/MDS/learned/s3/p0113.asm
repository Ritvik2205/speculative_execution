.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rbx, 96
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
test bl, 106
bts rcx, 115
inc edx
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 19
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 43
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rcx + 40]
and rsi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], cx
and rdi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rbx]
bt rcx, rcx
and sil, sil
cmovs dx, ax
cmovnl esi, ecx
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
bts rbx, rdi
and rdi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdi], 1
and dl, 91 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rax, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
