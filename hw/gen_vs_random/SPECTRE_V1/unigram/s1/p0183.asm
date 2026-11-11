.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, dl
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
test ax, ax
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
movsx cx, cl
lea ax, qword ptr [rcx + rcx + 86]
dec bl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], -4
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
imul bl
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
