.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 112 # instrumentation
cmovnle esi, ecx
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
xor bl, -5
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mul rdx
add bl, 111 # instrumentation
cmovs rdi, rdi
bswap rdi
bswap ecx
btr rax, rbx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], 900640967
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
sbb sil, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
