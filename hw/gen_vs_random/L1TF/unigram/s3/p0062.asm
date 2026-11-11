.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 54 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ecx
not cl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
add al, -48 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rax
setl cl
and rbx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
lea rbx, qword ptr [rbx + rcx + 14]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
add bl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
