.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ebx
sub dil, dil
cmovb eax, edi
lea dx, qword ptr [rdi + rbx + 98]
and rax, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rdx]
imul ebx, ebx, 119
test dl, cl
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rcx]
dec rdx
and rcx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
sub bx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
