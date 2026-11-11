.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, al
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
cmovp edi, ecx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -21
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
lea rcx, qword ptr [rcx + rsi + 80]
add rsi, 63
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], 55
lea rbx, qword ptr [rcx + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
sub dl, 43
sbb cl, cl
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
neg bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
