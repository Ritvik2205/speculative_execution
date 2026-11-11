.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 114
and rax, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rax]
mov di, ax
and dil, al
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdi]
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
add bl, -93 # instrumentation
cmovb rax, rbx
btr rcx, rbx
and rcx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rcx]
neg rdi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
sub di, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
