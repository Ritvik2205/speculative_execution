.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec ax
and rax, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rax]
cmovnle cx, cx
add al, 93
sbb rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], -37
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
add bl, -9 # instrumentation
adc rax, 1544006018
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdx]
add cl, -72 # instrumentation
cmovp edx, edx
test rbx, rdx
lea rdx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
btr ax, di
btr edi, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
