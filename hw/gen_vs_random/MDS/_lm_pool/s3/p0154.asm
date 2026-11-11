.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
not bl
and sil, dl
xor al, 55
or al, dl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rax, 1886208862
and eax, 366961170
xor cl, -13
and rbx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rbx]
or rsi, 98
and bl, bl
xor al, -26
test cx, 401
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
