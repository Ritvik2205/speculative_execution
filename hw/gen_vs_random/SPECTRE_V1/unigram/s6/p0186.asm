.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, dl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 85
and rbx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rbx]
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
xor cl, -40
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
adc dl, dl
add al, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
