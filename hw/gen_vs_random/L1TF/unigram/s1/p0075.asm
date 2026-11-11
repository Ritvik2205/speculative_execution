.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, edi
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rcx]
add dl, 97 # instrumentation
cmovnbe edx, esi
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
add bl, sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
btr eax, 47
lea edx, qword ptr [rbx + rbx]
bt edx, ecx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
sub rdx, 2
and rbx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rbx]
xor ebx, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
