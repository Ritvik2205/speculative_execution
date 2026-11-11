.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
sbb rdx, rdx
and al, al
test bl, 84
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
inc bx
or di, bx
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
xor al, 38
lea rdi, qword ptr [rdi + rdx + 10019]
setp dil
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
