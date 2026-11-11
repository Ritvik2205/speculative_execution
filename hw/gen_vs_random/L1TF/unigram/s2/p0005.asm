.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rsi, 71
or dl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
bswap rcx
and sil, 69
cmp cx, 1
setle dl
lea di, qword ptr [rsi + rdi]
cmovnbe ecx, esi
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 46
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 24
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
bswap rdi
cmovle cx, cx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovnp esi, eax
lea rax, qword ptr [rbx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
