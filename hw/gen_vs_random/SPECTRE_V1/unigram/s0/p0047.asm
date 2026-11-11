.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 45
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
sub rbx, rbx
and rdx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdx], 92
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
lea si, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 50
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi]
add al, 123 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 92
sub edx, -63
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
