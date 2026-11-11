.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx], 67
test rsi, rdx
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
sbb dl, dil
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
bts cx, 176
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
lea rax, qword ptr [rdx]
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 11
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
test dx, di
and rdi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
