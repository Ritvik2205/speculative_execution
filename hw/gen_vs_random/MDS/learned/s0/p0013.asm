.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
bt dx, bx
xor dl, cl
test bl, -14
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
xor cl, bl
jmp .bb_0.1
.bb_0.1:
btc di, 164
bt bx, dx
xor sil, cl
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
