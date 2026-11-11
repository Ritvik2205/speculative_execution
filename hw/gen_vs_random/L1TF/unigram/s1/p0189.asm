.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 20
cmovno di, ax
lea ecx, qword ptr [rdx + rdi + 42]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
lea rbx, qword ptr [rdx]
add cl, 88
cmovb edi, edx
add bl, 104 # instrumentation
mov ebx, 36
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 119
or dl, dl
cwd
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rcx]
add al, 77 # instrumentation
sbb eax, 23
setp bl
lea rbx, qword ptr [rbx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
