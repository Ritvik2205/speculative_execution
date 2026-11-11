.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
cmovb ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
add bl, -12 # instrumentation
lea rax, qword ptr [rdx + rdi]
setle al
lea rdx, qword ptr [rax + rax + 40]
cmp ebx, -33
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
mul bl
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
