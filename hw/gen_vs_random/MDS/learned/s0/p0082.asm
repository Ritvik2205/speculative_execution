.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt dx, ax
test al, 74
and rax, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
xor di, -116
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
xor cl, al
cmovno ecx, edx
bt edx, 69
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 287872877
bt ecx, 57
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
xor al, 78
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], sil
bts rax, 117
or al, -8
cmovnle cx, cx
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], -13
and rbx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rbx], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
