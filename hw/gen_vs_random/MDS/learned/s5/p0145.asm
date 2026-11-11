.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, cx
test al, 127
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 21
or al, bl
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], esi
or cl, al
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
xor di, -83
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
xor al, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
test sil, 41
or si, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
