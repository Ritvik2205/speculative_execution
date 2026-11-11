.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
test bl, -92
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
test al, dil
add dl, 47 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
or dx, 55
add dl, -102 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
or bx, 90
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
