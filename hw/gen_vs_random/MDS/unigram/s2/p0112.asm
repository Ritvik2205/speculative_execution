.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovnz edi, edx
btc rbx, rbx
and al, 14
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], 113
xor dil, dil
cmovz rdx, rdx
btc rax, 106
and rsi, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rsi]
and di, 99
jmp .bb_0.1
.bb_0.1:
xor sil, bl
bts rdx, rax
or cx, bx
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and al, 14
cmovb rbx, rax
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rbx
cmovb bx, si
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
