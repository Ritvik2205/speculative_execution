.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rbx, 65
bt rsi, rbx
test cx, ax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and al, -70 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bl, 49 # instrumentation
cmovbe rax, rcx
test cl, dl
not dl
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
cmovns rdi, rdx
bts edi, 248
bt rax, rsi
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
xor rdi, -9
cmovle rsi, rbx
cmovnbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
