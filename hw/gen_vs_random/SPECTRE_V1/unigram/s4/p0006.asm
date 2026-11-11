.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
test bl, al
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 19
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
lea dx, qword ptr [rdx + rax]
cmovnle rdx, rbx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], 79
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
setnb al
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
lea dx, qword ptr [rax + rdi + 98]
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
