.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
sbb al, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
cmovb ax, cx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
lea ax, qword ptr [rbx + rdi]
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
cmovnle rbx, rdi
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], dx
test dl, dil
and dl, -109
cmovno dx, ax
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
