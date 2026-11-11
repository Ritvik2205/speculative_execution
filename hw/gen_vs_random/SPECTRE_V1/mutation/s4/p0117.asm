.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and dl, cl
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
or rdi, rdi
lea cx, qword ptr [rax + rax + 48724]
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
movsx ax, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rax + rdx]
cmp al, 13
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
add eax, 1518653812
add al, 36 # instrumentation
cmovnp rbx, rsi
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
