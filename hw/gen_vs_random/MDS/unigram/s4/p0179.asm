.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rax, rdx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
cmovle ebx, edi
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
bts rcx, 115
and cl, -101
test rdi, 33
or dil, dl
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 69
and cl, 85 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rdi]
cmovnb dx, cx
test bx, 34
and eax, -2116875023
cmovs edi, eax
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
