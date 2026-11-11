.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, sil
cmovl esi, edi
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rsi
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and al, 39 # instrumentation
cmovbe dx, cx
jmp .bb_0.1
.bb_0.1:
cmovnz rdi, rcx
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
cmovns ecx, eax
bt ecx, 67
not bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and cl, cl
and rax, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rax]
xor al, 34
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
xor cl, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
