.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -34 # instrumentation
setl dl
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
test al, bl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp ax, 2764
not ecx
add dil, 98
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], si
lea si, qword ptr [rsi + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
test al, dl
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
