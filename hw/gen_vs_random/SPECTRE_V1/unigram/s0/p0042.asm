.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
add cl, -6 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rax]
xor dil, dl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 36
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
and rdx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], 36
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, 86
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
xor dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 58
add bl, sil
cmovnp cx, dx
or al, cl
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
