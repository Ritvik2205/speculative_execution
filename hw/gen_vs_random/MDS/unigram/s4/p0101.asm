.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 51
test cx, 401
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], ebx
and bl, 96 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
test al, al
cmovnz rsi, rdi
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor dl, sil
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and al, al
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
cmovnp ebx, esi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], cx
or dil, -78
xor cl, sil
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], -114
and rdi, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 17451
and bx, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
