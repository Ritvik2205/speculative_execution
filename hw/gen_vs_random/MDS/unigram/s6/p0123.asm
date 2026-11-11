.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 61
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 51
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
xor rdi, rbx
cmovbe edx, edx
cmovb edx, ecx
btc ax, 24
and al, dl
and al, -83 # instrumentation
cmovnp rdx, rdi
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
and dl, 97 # instrumentation
cmovnp bx, di
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 105
cmovnp ebx, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdx
btc bx, 104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
