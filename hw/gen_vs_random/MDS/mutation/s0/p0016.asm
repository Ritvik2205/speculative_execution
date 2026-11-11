.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and rdi, rdx
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
jmp .bb_0.1
.bb_0.1:
bt rax, rsi
cmovns rdi, rdx
and rcx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rcx]
not dl
and bl, 49 # instrumentation
cmovbe rax, rcx
cmovle rsi, rbx
bts edi, 248
xor rdi, -9
cmovnbe eax, edi
test cl, dl
and cl, 46 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
