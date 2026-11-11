.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, si
cmovb rdx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
or sil, al
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
cmovnp rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 63
cmovb bx, di
add sil, 3
or al, -48
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
or ax, 6575
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
bt rcx, rax
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rax], si
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
inc rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
