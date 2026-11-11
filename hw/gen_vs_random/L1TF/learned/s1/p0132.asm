.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rsi
xchg dl, bl
lea rbx, qword ptr [rdx + rdi + 50]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
imul bx, dx
and rdi, -60
bt edi, 191
movzx rax, dl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
sub bl, 33
lea rsi, qword ptr [rax + rcx]
and eax, -1143711697
test rax, -991273825
not esi
cmovnb rdx, rbx
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
