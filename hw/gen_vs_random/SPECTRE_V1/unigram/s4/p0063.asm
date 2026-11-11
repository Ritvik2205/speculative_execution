.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
cmovnle rdx, rax
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rax], rax
lea edx, qword ptr [rcx]
cmovnb dx, dx
seto sil
cmovnbe rbx, rdi
cmovl rcx, rcx
add di, 44
add bl, -57 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx rdx, byte ptr [r14 + rax]
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
