.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
xchg rdx, rsi
add eax, 109
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 53
inc rcx
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
xor dil, dl
test cl, 92
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
or rbx, 18
and eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
