.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
lea esi, qword ptr [rcx]
cmp dx, ax
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
adc rax, -1877286258
and rax, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rax]
bt edx, ebx
bt rdx, rdi
and rcx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rcx]
adc edi, 122
mov bl, sil
sub esi, 62
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
