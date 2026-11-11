.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, 34 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
or dil, cl
xor bl, al
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
test dil, 46
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or rbx, -77
xor bx, 21
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 77
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
or bl, 100
and al, cl
or al, 24
xor edi, 38
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], -104
xor cl, 83
cmovnb cx, ax
and rdx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
