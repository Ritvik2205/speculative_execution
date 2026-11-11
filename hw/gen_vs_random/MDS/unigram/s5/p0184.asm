.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and dl, 57 # instrumentation
cmovnb dx, bx
xor dl, dil
bt rcx, rax
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
and bl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
btr ebx, edx
and dl, -24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and dl, 0 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
cmovnp eax, ebx
btc ecx, ebx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ebx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
or sil, -49
cmovns cx, dx
cmovnb esi, edi
test rax, 1978892575
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 7
btc rdi, 221
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
