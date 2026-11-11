.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
xchg dl, bl
add bl, 39 # instrumentation
cmovo eax, ebx
xor si, 96
and eax, 933895314
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 60
lea rax, qword ptr [rbx]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rcx]
xor dl, bl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edx
cmovs rax, rax
inc ebx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
