.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 23614
xor dl, cl
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
cmp bl, dl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 3
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rcx]
xor ax, -24879
add al, -125 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rax]
cmp ax, -6940
lea eax, qword ptr [rsi + rbx + 1473]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], dl
adc esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
