.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, edx
and rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
or cl, dl
and rdi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
xor edi, 84
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
cmovnp di, si
bt si, ax
and bl, 65 # instrumentation
cmovnbe ax, bx
and bl, 121 # instrumentation
bt rcx, 43
cmovnp si, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
