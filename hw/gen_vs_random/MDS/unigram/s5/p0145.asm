.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and bl, 33 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
xor dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
or di, di
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdi]
or al, dil
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rbx], rax
xor rdi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
cmovl ebx, edx
cmovnl esi, eax
or sil, al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and dil, -83 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
