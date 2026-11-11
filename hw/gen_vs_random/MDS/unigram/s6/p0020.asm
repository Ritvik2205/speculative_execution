.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr cx, cx
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
bts cx, 14
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
not cl
or al, -78
cmovnp rsi, rbx
xor di, -83
or bl, dil
cmovle rdx, rsi
xor dl, -59
and dil, dil
cmovl dx, bx
cmovl rsi, rcx
and bl, 49 # instrumentation
cmovbe rdx, rax
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
