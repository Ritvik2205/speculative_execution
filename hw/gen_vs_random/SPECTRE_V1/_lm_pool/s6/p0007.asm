.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, bl
sub cl, dl
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
cmp edx, 44
lea ax, qword ptr [rdx + rdi + 73]
and cx, 15
and ax, -13240
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
test al, -75
sbb al, -114
mov cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
