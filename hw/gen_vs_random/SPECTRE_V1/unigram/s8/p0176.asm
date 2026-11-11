.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
lea rsi, qword ptr [rdx + rcx + 57579]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], bx
lea cx, qword ptr [rsi + rsi + 37]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
add dl, 13 # instrumentation
setns dl
cmovnz si, ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], edi
lea rbx, qword ptr [rdx + rcx]
and dil, -114
xor sil, -33
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
lea cx, qword ptr [rax + rdx]
test bl, dl
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
