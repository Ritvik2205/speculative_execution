.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 4 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
xor al, sil
cmovs edx, edx
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
cmovnbe ax, di
and rax, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 65
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
cmovnz rax, rcx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and dil, -115 # instrumentation
cmovl ax, di
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and al, bl
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
test rsi, 879594088
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
