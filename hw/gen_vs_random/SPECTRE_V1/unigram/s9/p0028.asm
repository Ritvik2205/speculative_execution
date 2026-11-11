.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle rbx, rdx
mov cl, sil
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
add al, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rbx]
add dl, -77 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
cmp dl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rsi]
bt ecx, 204
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 22
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
lea ebx, qword ptr [rbx + rbx + 53]
adc bl, bl
add bl, dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], -69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
