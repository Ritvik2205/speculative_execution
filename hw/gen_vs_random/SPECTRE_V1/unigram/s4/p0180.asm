.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rcx, rbx
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
add al, 98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
bts rdi, rsi
add al, 32 # instrumentation
sbb cl, al
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, al
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovp edx, ecx
imul bl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 1
test ecx, -1134698714
test al, 70
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
