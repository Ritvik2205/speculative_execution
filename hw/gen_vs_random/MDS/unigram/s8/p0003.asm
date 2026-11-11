.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -83
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
btc dx, ax
or edi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
cmovns ax, dx
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or dil, 12
or dl, -21
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rsi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
test bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
