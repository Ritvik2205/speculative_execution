.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
xor si, -50
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
test sil, dl
sbb ecx, 59
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rcx]
sbb dl, -26
or dil, 1 # instrumentation
mov ax, 1 # instrumentation
div dil
or cx, 6
imul si, cx, 27
test cl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
