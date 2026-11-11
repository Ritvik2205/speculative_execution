.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, 69
movzx rdx, bl
xor bl, dil
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
add cl, -110 # instrumentation
setbe cl
neg cl
or dx, -126
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
movsx si, dl
mov cl, cl
add cl, -84 # instrumentation
xchg rbx, rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
test edx, 35
lea cx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
