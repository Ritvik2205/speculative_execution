.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rcx
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
lea ax, qword ptr [rdi]
sub bl, -96
test rax, -1576813424
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 18
add al, -21 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
lea eax, qword ptr [rdx + rax]
add dl, cl
lea di, qword ptr [rdx + rsi + 28]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
setnle sil
movzx ecx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
