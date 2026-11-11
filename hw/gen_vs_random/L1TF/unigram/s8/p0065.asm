.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, al
add cl, 72 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rdx
lea rax, qword ptr [rdx + rdi + 87]
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
imul ax
cmovnz rdx, rax
cmp dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rbx]
lea rbx, qword ptr [rdi + rax]
setnz dil
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
