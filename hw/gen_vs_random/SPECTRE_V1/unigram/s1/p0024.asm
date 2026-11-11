.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp sil, sil
add dl, 58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
movzx bx, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -12 # instrumentation
lea rdx, qword ptr [rax + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
inc rdx
lea rsi, qword ptr [rdi + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rax
sbb bl, 79
bswap rsi
cmp ebx, -33
xor bl, bl
add dx, -90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
