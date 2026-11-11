.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rdi, rdx
sub bl, 62
not al
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
or rbx, 51
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
sbb di, 12
imul ax
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rcx]
mov al, 79
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rdi]
mul dx
cmovs edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
