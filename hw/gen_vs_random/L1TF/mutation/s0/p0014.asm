.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, bx
setp dil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 46
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
sbb rdx, rdx
lea rdi, qword ptr [rdi + rdx + 10019]
xor al, 38
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
test bl, -92
inc bx
and rax, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dil
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and al, al
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
