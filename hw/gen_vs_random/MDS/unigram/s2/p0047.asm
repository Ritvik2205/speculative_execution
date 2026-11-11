.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 78
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
btc rdi, rcx
cmovnb bx, cx
cmovs rax, rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 44
or bl, -98
xor eax, 73
and cl, -17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovb rcx, rax
and cl, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
cmovs edi, eax
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
bt rdi, rax
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
cmovs rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
