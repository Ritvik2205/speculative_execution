.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
mov cl, bl
add dl, -11 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 15
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
imul ecx, ecx, 58
not sil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], ax
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
not ax
and rax, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rax]
imul eax, esi
cmovnle rdi, rax
and rdi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
