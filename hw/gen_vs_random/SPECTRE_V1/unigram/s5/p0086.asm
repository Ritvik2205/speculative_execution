.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
sets bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add bl, 112 # instrumentation
cmovnb di, bx
imul dl
imul ebx, edi, 35
imul cl
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 87
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnbe cx, dx
add dil, 126 # instrumentation
cmovnl cx, di
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
add bl, -12 # instrumentation
lea rdx, qword ptr [rax + rcx]
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
cmovs rcx, rcx
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
add dl, 78 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
