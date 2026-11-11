.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
xor rdx, -59
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rbx, 65
test al, -81
xor bl, -27
and al, bl
test rsi, 29
or rdi, 21
and sil, al
and dx, 60
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], cx
xor al, dl
bts rax, 77
or cl, -77
and rsi, 62
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
