.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 99
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
adc cl, dl
add al, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 44
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 12
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 30
bswap rcx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
setle dl
cmovz ecx, ebx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 2
cmovno eax, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
