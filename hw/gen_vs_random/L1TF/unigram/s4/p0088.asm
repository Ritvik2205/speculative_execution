.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo rdx, rbx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
lea rdi, qword ptr [rdi + rax + 35]
adc dl, -12
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb dl, -26
or sil, bl
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
mov sil, dl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
lea bx, qword ptr [rax + rsi + 58]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 79
setnl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
