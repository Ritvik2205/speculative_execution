.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 11 # instrumentation
cmovns edx, edi
cmovnz ax, dx
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], ax
lea cx, qword ptr [rcx]
not dx
cmovns rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 2
sbb al, dl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub al, -89
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rdx]
xchg al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 53
add bl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 2
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rax]
movsx edi, al
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
imul rdi, rsi, -45
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -39
mul cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
