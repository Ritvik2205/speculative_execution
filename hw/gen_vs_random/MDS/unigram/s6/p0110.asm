.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
bts si, cx
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
cmovnp rdx, rax
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 29
cmovb rdi, rbx
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
cmovnz di, bx
and bl, 68
bts edi, 248
test ebx, eax
bts rdi, rdx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
cmovp ecx, edi
cmovnp ax, si
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
