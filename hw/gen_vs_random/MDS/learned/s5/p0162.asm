.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
xor ax, -23364
or bl, dil
jmp .bb_0.1
.bb_0.1:
or cx, -42
test al, bl
or al, -24
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
xor al, cl
and bx, 8
or ax, -4210
xor cl, 83
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
