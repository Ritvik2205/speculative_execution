.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -72 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rcx], bx
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
cmovp cx, dx
xor al, 9
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], si
cmovnz edi, ebx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
and rdi, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdi]
cmovnbe di, bx
bt ebx, edx
btc cx, bx
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
xor sil, al
and dil, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
