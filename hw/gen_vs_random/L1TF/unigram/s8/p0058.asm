.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 78
cdq
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ecx
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
add dl, dl
mul rdx
setp dil
lea eax, qword ptr [rcx + rdi]
cmovnz bx, cx
lea di, qword ptr [rdx]
xor bx, 38
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
