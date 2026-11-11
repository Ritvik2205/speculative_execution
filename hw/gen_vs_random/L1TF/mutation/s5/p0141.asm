.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
add bl, 111 # instrumentation
cmovs rcx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
add bl, -79 # instrumentation
cmovo cx, di
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
btr esi, ecx
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
bswap rbx
imul si, cx, 27
and sil, 37
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
and bl, dl
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
lea rdi, qword ptr [rsi + rax + 41973]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
