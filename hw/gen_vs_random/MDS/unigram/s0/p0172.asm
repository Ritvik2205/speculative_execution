.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -56 # instrumentation
cmovl rcx, rsi
or dl, dil
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 0
test al, -59
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmovnl rbx, rbx
bt si, ax
test al, 74
or cl, dl
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rax]
and sil, -115 # instrumentation
cmovl bx, si
and sil, -115 # instrumentation
cmovl ax, si
cmovnle rcx, rdx
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 6
and al, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
