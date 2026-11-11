.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 98
cmovnp rax, rsi
btr ax, cx
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
cmovl rcx, rax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 40
btr ecx, 56
and dil, 47 # instrumentation
cmovnp edi, eax
btr si, 208
cmovs dx, di
and rbx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rbx
and cl, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
xor rcx, rcx
bts rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
