.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 100
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rdi]
movsx edx, dl
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdx]
add bl, -107 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
cmp edx, ebx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], ebx
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add esi, 9
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
