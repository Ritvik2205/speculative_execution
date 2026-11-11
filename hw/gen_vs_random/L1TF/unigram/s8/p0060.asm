.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle sil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
test ax, 7679
and ebx, 108
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
cmovnb edx, ecx
cwd
cmovl di, di
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
inc esi
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 13
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovz rbx, rcx
and rcx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
