.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], di
and dil, 68 # instrumentation
cmovns ax, di
and al, -98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
and sil, 21 # instrumentation
cmovb dx, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
or bl, dil
and cl, 123 # instrumentation
cmovo ax, si
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
cmovno rbx, rcx
cmovp dx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rsi, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
or bl, -62
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
