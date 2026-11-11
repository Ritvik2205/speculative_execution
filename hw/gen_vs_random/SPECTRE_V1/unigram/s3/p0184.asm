.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -64
adc bx, 63
xor al, -41
cmovnb dx, ax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
dec rdi
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
sbb rsi, 59
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
movsx rbx, ax
bts rax, 140
cmovl rdi, rcx
cmovbe rdx, rbx
adc dil, dl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
