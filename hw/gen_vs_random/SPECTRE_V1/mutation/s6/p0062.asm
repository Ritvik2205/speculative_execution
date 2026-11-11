.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax + rax + 48724]
or rdi, rdi
movsx ax, cl
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and dl, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
inc rax
lea rbx, qword ptr [rax + rdx]
cmp al, 13
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add al, 36 # instrumentation
cmovnp rbx, rsi
add eax, -55403434
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
