.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
setp bl
test al, al
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
adc rbx, 66
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
sbb rbx, 9
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
setle sil
and rbx, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 61
cmovns rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
