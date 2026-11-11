.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
or si, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv si
sub rcx, 83
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ebx
cmovno edi, eax
imul ax, bx
neg bx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 6791
add cl, 105 # instrumentation
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 16
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
