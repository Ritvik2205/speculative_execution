.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdi
cmovz cx, cx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
cmovo rsi, rcx
and cl, -49 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and dl, 18 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
test esi, 425331143
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
or cl, sil
and sil, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], cx
and al, -116 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
or sil, -78
and sil, -40 # instrumentation
cmovle cx, si
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
xor bl, sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 33
and rdx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
