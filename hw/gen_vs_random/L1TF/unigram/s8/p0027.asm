.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rbx + rax + 81]
add cl, -41 # instrumentation
adc dx, bx
cmovs ax, bx
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
add sil, sil
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
cmp edx, edx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovz ecx, eax
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 44
or eax, -62
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
btr ax, di
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
