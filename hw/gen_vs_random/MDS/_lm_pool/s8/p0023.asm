.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
xor dil, al
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ecx
or sil, bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 64
and cl, bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
btr dx, 47
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
or sil, bl
and dil, dil
bt ax, si
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
