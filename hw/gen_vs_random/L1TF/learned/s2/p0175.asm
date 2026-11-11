.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 43
sbb al, -23
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
add ax, 23614
and rbx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rbx]
and dl, bl
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
btc ebx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
