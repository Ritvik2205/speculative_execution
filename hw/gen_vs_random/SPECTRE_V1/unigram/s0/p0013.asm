.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
cmovp esi, edx
setno sil
cmovo edx, edx
cmovno rcx, rax
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 63
test di, 17
cmovnl eax, edi
cmovnl rdi, rdx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 11407425
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
add cl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
add bl, -108 # instrumentation
sbb dl, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
