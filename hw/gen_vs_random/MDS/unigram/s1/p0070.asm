.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 28
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 48
or bl, cl
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 87
or sil, dil
and rsi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
xor al, dl
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rdx, 64
and dl, 107 # instrumentation
cmovs ecx, edi
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 62
and al, -105 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rax, -1909598591
cmovle ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
