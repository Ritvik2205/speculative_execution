.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
cmovbe esi, edx
sets dl
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rcx]
sub cl, -47
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
bt rsi, rdi
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], ecx
setnle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
