.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
lea ecx, qword ptr [rcx + rbx + 82]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 7
adc al, al
xor edx, 77
sub cl, bl
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
sub al, -97
add dl, 127 # instrumentation
setnbe bl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 69
not edx
xor sil, dil
cmp eax, eax
and rcx, 0b1111111111111 # instrumentation
adc eax, dword ptr [r14 + rcx]
cmovz edi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
