.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb rdi, rdi
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
xor dil, 124
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 92
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
xor edi, edi
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
or ax, 0b1000000000000000 # instrumentation
bsr cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -85
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdx]
or di, 0b1000000000000000 # instrumentation
bsr ax, di
cmovnb rdi, rsi
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 23
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and sil, -98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
