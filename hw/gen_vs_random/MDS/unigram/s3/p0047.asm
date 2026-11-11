.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 32
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 81
and rsi, 70
and eax, -1971658905
xor bx, dx
cmovo rbx, rdi
cmovnb di, si
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 19
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovb rsi, rbx
xor al, dil
xor esi, 64
xor sil, bl
bts cx, si
test ebx, 245771113
cmovp rdi, rbx
or sil, cl
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
