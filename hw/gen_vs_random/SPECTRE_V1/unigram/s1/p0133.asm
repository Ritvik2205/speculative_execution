.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
movsx ecx, byte ptr [r14 + rdi]
bts rdi, 12
cmovs dx, ax
lea dx, qword ptr [rcx + rdi + 91]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
xor ax, -2537
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
setnle sil
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rcx]
lea rcx, qword ptr [rax]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
dec dl
xor dx, 19
test rdx, 22
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], al
btc edi, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
