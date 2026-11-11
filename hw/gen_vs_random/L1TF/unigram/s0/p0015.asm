.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
cbw
xor al, 38
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
cmovl rdi, rdx
cmp si, ax
mul rdi
lea rbx, qword ptr [rdi + rax]
xchg rbx, rax
jmp .bb_0.1
.bb_0.1:
lea rdx, qword ptr [rax + rdx + 50]
add eax, 871834813
and al, al
cmovo rsi, rcx
movsx edi, bl
and al, -68
and rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
