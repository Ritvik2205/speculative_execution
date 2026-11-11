.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, 55
movzx bx, al
not rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 34
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], si
cmovnle rax, rbx
js .bb_0.1
jmp .exit_0
.bb_0.1:
xor ax, 913
xor eax, -1721938664
add dl, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
sbb al, 104
add bl, -5 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
