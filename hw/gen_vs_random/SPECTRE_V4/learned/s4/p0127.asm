.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rdx
cmovle rdi, rsi
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], bl
or eax, 2007177863
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -81
xor bl, 93
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rcx
sbb cl, dil
and rdx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], cx
cmovp ax, si
cmp si, 98
and rcx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rcx], 16
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], -71
xor cl, bl
add cl, -82 # instrumentation
sbb si, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
