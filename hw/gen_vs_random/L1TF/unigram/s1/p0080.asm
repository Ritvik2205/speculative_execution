.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 33
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
inc bl
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
lea rcx, qword ptr [rsi + rsi]
setle cl
mov cl, sil
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
