.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 94
add cl, -104 # instrumentation
lea rcx, qword ptr [rbx + rsi + 80]
add bl, -95
and edi, 2
bt esi, 66
cmovnp bx, di
inc bl
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp bx, dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1394632232
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], si
cmp bl, sil
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
sbb edx, -8
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], cx
add eax, -1174744897
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
