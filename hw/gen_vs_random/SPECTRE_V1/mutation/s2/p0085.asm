.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
setbe dl
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdx]
sub dl, bl
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
xor dl, dl
cmp eax, 100
and si, cx
add rax, 977059290
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
neg al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
