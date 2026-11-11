.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
add al, bl
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rsi
and dx, 60
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, dl
xor al, 115
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], bx
xor dl, bl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdi], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
