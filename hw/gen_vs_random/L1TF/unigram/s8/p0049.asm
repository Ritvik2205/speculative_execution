.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb bx, di
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
not ecx
lea cx, qword ptr [rax]
test eax, ecx
sbb dil, dil
sbb rax, 62
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
movsx edx, sil
btr edi, 31
lea rax, qword ptr [rax + rbx + 44]
cmp sil, cl
xor di, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
