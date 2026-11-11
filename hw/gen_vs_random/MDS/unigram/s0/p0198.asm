.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 6
cmovno rbx, rdx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
xor sil, sil
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
xor ecx, 8
cmovb rdi, rcx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 79
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and dl, 93 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and bl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
and dl, 60 # instrumentation
cmovnl ecx, edi
cmovnb rcx, rax
cmovnz cx, si
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
or ecx, esi
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
