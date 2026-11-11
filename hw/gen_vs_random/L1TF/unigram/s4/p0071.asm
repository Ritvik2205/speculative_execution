.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
btc eax, eax
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
and cl, 56
test sil, dl
add cl, -72 # instrumentation
cmovp edi, edi
not bx
test ax, 22956
cmp dil, dl
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 43
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], -46
test rdx, rax
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
