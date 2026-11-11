.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 32 # instrumentation
sbb sil, al
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
cwd
neg dx
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], dx
xor ebx, 27
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 80
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], eax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
test dx, 64
add al, -121 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
btc esi, 24
setnle bl
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
