.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, al
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, bl
bt cx, bx
xor cl, 15
xor dil, -3
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
test dl, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
bt rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
test rax, -2004802425
bt si, bx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
