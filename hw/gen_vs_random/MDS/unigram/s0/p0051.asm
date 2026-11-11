.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
not bx
jmp .bb_0.1
.bb_0.1:
and bl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
and dil, -3 # instrumentation
cmovnb di, dx
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], eax
or cx, 10
cmovnl cx, di
btr rdi, 90
and ebx, 36
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or cl, 100
and dil, 83
btr ax, 95
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dil, dl
not dil
cmovl rsi, rdi
not ecx
cmovz rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
