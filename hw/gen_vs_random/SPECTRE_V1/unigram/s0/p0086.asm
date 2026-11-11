.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, eax
adc ecx, ebx
sub bl, bl
add bl, -114 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], dil
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
bts cx, 89
add dl, -77 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rax]
add al, -36 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sbb si, 33
and bl, cl
and rdx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rdi
add dl, -96 # instrumentation
cmovo edi, edi
lea rax, qword ptr [rcx + rbx + 35]
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
cmovz ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
