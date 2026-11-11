.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], -64
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
add bl, 93 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], -15
add bl, -79 # instrumentation
cmovo cx, di
lea rdi, qword ptr [rsi + rax + 41973]
and sil, -90
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rsi
and rdx, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rdx]
btr esi, ecx
add dl, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and bl, dl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
bswap rbx
imul si, cx, 27
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
add bl, 111 # instrumentation
cmovs rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
