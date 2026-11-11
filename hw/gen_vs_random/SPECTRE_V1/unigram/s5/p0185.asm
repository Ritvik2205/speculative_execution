.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
sub di, 46
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
mov dil, cl
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rdi]
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 46
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 59
sub al, cl
lea rdi, qword ptr [rcx + rsi + 93]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
