.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], 64
and rsi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 63
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
add al, -106
adc cl, -18
mov al, cl
or cl, dl
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
add cl, -42 # instrumentation
adc dil, bl
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
cmovle si, si
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
