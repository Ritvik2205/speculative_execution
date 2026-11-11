.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
imul rax, rdx
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -75
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
add cl, al
cmp rdx, rax
lea cx, qword ptr [rax + rdx]
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
add al, -14 # instrumentation
lea ax, qword ptr [rbx + rdi]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 92
btc ebx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
