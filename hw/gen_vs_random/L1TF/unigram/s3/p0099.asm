.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], ecx
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
test sil, dl
bt bx, si
bt rcx, rbx
cmovnl dx, cx
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
neg rcx
lea esi, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
xchg al, cl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
adc esi, 13
add bl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
