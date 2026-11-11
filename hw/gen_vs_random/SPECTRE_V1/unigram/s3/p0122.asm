.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rax]
cmovns rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
cmovns rdx, rax
xor cl, -103
and rcx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
lea si, qword ptr [rdi + rbx + 13]
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], 5
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 97
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
sets cl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
