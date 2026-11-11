.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rax]
sub cl, 32
dec ax
lea eax, qword ptr [rdx + rbx + 78]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
sbb si, di
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
sbb sil, bl
adc eax, edx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 97
dec si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
