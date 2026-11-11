.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
imul edx, ebx, 80
add dl, -96 # instrumentation
cmovo ebx, ebx
bt si, si
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
cmovle edx, esi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], sil
add bl, -42 # instrumentation
lea bx, qword ptr [rdi + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
btc eax, 18
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
lea rax, qword ptr [rcx + rcx]
test cl, -33
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
