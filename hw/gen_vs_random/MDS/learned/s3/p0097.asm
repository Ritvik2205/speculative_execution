.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, -43
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and al, 106
and cx, -2
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 35
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
xor al, -4
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
or al, bl
test rax, -648054011
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
xor al, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
