.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, -88
bt rsi, 27
test dil, al
and rcx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rcx]
or di, 86
and rcx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 0
cmovnp rbx, rdi
jmp .bb_0.1
.bb_0.1:
and al, al
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rax]
cmovns rcx, rsi
or si, 0b1000000000000000 # instrumentation
bsf si, si
and cl, 91 # instrumentation
cmovle rcx, rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdi
cmovnbe rdi, rsi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
