.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], -86
or rdi, rdi
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
movsx ax, cl
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
lea cx, qword ptr [rax + rax + 48724]
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
and dl, cl
jns .bb_0.1
jmp .bb_0.2
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
cmp al, 77
inc rax
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 26
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rax, rdx
add eax, 1938514106
test rcx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
