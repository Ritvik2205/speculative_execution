.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -47 # instrumentation
sbb cl, 115
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 44
imul rsi, rax, 76
cmovo rsi, rsi
cmp rax, rsi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 36 # instrumentation
cmovnp rbx, rsi
add eax, 1518653812
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdx]
cmp al, 46
inc rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
