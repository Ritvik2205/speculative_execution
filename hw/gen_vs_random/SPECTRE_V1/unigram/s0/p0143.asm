.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, bl
add cl, -121 # instrumentation
setno cl
lea rdx, qword ptr [rcx + rdi + 68]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -6
cmovnbe rdx, rsi
mul sil
setns bl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
cmp sil, al
cmovnb rdx, rcx
test rdi, -1846965753
and rcx, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
