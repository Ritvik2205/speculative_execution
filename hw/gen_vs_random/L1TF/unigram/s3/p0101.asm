.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
lea dx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
add cl, -34 # instrumentation
setl dl
add bx, di
add bl, 15 # instrumentation
cmovb ecx, ecx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edi
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
not dl
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
or ecx, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
