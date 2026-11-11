.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setle bl
and rsi, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 20
or rdx, 92
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
lea eax, qword ptr [rax + rsi + 86]
or bl, 65
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], dx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
lea esi, qword ptr [rbx + rbx + 8]
add bl, -12 # instrumentation
lea rcx, qword ptr [rax + rbx]
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 3
setnb sil
movzx edx, dx
add al, 120 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
