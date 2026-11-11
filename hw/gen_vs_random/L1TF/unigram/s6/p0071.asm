.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
sub rcx, -121
test rax, rsi
add al, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdi]
add bl, -92 # instrumentation
setnz dl
inc bl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
add al, -48 # instrumentation
and rax, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
add sil, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
add cl, 39 # instrumentation
lea cx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
