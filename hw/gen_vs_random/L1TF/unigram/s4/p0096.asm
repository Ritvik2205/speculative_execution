.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
btr esi, eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
sub dx, 34
lea rax, qword ptr [rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], edi
add al, 112 # instrumentation
cmovnle eax, esi
xor dl, bl
test ax, ax
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
cmovbe ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
