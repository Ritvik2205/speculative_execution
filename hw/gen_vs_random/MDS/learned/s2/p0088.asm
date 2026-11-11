.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
btc dx, 38
and rbx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rbx]
btc dx, ax
and cl, -3 # instrumentation
cmovnb cx, dx
and rax, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -106
or bl, 73
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], si
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], cx
or ax, -4635
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
or cl, dl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], -90
and dil, bl
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 13
or sil, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
