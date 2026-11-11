.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ebx, ebx, 119
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
nop
setle dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
lea dx, qword ptr [rbx + rcx + 83]
lea ecx, qword ptr [rax + rax + 66]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not si
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], 50
cmovno di, cx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
lea dx, qword ptr [rbx + rbx + 81]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
