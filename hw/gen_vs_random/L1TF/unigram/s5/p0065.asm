.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
add bl, 79 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
test al, dl
and rsi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rsi]
cmovnp bx, di
bswap rbx
lea bx, qword ptr [rcx]
add cx, 98
cmp edi, 8
cmp bl, cl
adc ecx, 93
add al, al
and sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
