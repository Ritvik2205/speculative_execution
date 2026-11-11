.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz ebx, ecx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmp rax, -1365488374
add bl, 39 # instrumentation
cmovo ecx, edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
sub dl, 71
and rax, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
add dl, -125 # instrumentation
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 47
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rax], di
cmp eax, ebx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
