.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
or al, -57
lea edx, qword ptr [rbx + rdi]
setnle bl
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
add dil, -40 # instrumentation
sbb rdi, 86
btr eax, esi
jmp .bb_0.1
.bb_0.1:
inc edx
lea rdi, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
setl cl
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
add bl, -103 # instrumentation
cmovnz bx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
