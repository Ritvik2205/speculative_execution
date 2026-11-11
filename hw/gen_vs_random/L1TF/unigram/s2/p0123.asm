.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], eax
setp dil
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rax]
sbb ecx, eax
lea ebx, qword ptr [rax + rax]
add dil, 6 # instrumentation
cmovl eax, edi
add bl, -40 # instrumentation
sbb rbx, 37
lea rax, qword ptr [rsi + rcx]
lea bx, qword ptr [rbx + rdx + 23]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
movsx rdi, di
and rdi, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdi]
cmovnp dx, cx
xchg al, bl
movzx esi, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
