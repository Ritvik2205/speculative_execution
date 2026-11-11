.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 65
test al, sil
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
and dl, 110 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdx]
btr rcx, rcx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
not si
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovz edi, edx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
cmovnb ax, dx
and bl, 60
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 14
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
xor cl, dl
and bl, -55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
