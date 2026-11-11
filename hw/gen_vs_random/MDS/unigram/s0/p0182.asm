.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 88
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
and cl, 78 # instrumentation
cmovs cx, dx
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and dl, -73
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and bl, 120 # instrumentation
cmovnp ax, dx
bts edx, 189
cmovnl edx, edi
xor sil, dil
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
and dil, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -14916
and dx, 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
