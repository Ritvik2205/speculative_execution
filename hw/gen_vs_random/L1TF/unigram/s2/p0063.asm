.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -40 # instrumentation
sbb rdi, 20
add rdx, 99
test rdx, 40
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 12
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], esi
lea rsi, qword ptr [rax + rdx]
movsx ebx, sil
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
lea ebx, qword ptr [rcx]
neg dil
lea rax, qword ptr [rax + rdi]
sbb si, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
