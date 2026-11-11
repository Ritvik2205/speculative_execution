.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
cmovb rcx, rdi
add dl, -87 # instrumentation
cmovnle rbx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rax]
mul rax
inc rsi
jmp .bb_0.1
.bb_0.1:
sub ebx, 31
seto dl
cmovp ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 80
not sil
test rax, rdx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
