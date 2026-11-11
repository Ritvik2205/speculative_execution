.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dil
cdq
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
lea edx, qword ptr [rdi + rdi + 82]
cmovnb eax, ecx
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdi], ax
jmp .bb_0.1
.bb_0.1:
or cx, 99
lea edi, qword ptr [rdx + rdi + 45]
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
add bl, 111 # instrumentation
cmovs rax, rax
lea si, qword ptr [rbx + rdx + 62]
cmovbe di, di
xchg al, al
imul dx, cx, 75
sub cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
