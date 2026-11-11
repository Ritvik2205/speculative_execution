.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl eax, eax
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -65
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], esi
not eax
and dl, -17 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
or dl, cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
bts cx, di
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and rdi, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
or cl, dl
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
