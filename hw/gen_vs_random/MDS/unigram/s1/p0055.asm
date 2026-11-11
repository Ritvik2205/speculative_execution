.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -15 # instrumentation
cmovnp ax, ax
btc rbx, 35
or edi, -88
or si, 0b1000000000000000 # instrumentation
bsf si, si
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 96
xor rdi, rax
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], edi
btr ecx, 42
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
cmovl edx, ecx
cmovnl cx, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edx
and cl, 112 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rbx]
cmovns ecx, eax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
and di, ax
and rdi, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
