.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 84 # instrumentation
btc bx, bx
btr esi, 174
bt dx, cx
and rdx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
setbe cl
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rbx + rdi]
bt edi, 191
jmp .bb_0.2
.bb_0.2:
btc cx, 31
add cl, -3 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 20
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edi
test rax, -866236703
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
bt rsi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
