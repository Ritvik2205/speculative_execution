.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 678817098
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
bts rdi, 130
and eax, -85386306
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
or al, 25
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
bt rsi, 4
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
or ax, 127
jmp .bb_0.2
.bb_0.2:
bts si, 205
not al
not bl
and cx, -2
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
