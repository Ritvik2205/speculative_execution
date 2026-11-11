.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovbe si, cx
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], bx
sbb esi, esi
cmp edx, edx
sub edi, ebx
add dil, -21 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test cl, 54
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
dec ecx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdi]
or eax, ecx
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
xchg bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
