.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, rdi
xor dl, -43
and al, 106
and al, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
bts rdx, 200
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
xor al, cl
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
or al, -78
btr ax, cx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and bl, dl
jmp .bb_0.1
.bb_0.1:
xor al, dl
xor sil, -15
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
