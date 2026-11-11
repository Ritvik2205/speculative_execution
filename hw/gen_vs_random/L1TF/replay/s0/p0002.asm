.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmp bl, dl
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
add ax, -24961
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
jmp .bb_0.1
.bb_0.1:
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
adc esi, esi
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
xor ax, -16232
cmp ax, 7046
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
lea eax, qword ptr [rsi + rbx + 1473]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
