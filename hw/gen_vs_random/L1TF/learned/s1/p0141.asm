.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rbx]
cmovb ax, di
mul dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1908434016
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], -78
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
lea bx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -104
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
not dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
