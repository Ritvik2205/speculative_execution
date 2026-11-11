.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea cx, qword ptr [rax + rax + 48724]
and dl, cl
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
movsx ax, cl
or rdi, rdi
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
add al, 36 # instrumentation
cmovnp rbx, rsi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
lea rbx, qword ptr [rax + rdx]
inc rax
cmp al, 13
add eax, 1518653812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
