.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], cx
adc rdi, 127
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
add cl, 98 # instrumentation
inc cl
jmp .bb_0.1
.bb_0.1:
movsx edx, al
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
cmovnz cx, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 118
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
