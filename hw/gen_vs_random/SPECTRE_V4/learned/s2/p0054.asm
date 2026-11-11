.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 98
or si, 0b1000000000000000 # instrumentation
bsr di, si
add cl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
movzx di, dil
adc esi, 90
movzx ax, dl
xor eax, 181978569
xchg dx, si
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
add bl, bl
xor eax, 181978569
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rcx], eax
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], 89
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
