.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rcx]
xchg esi, ebx
xor ax, 15671
or bl, 80
cmovbe rdi, rax
adc dl, bl
dec al
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rdx, 84
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub si, word ptr [r14 + rdi]
dec al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
