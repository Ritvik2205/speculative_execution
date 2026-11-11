.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -8 # instrumentation
lea edx, qword ptr [rbx]
add bl, 117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
and dil, dil
cmovno dx, cx
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 71
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ecx
add ebx, 2
setp bl
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
