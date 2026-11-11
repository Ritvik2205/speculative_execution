.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, 89
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rdi
setnb dl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
seto al
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
adc al, al
cdq
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rdx]
setz al
lea si, qword ptr [rbx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
