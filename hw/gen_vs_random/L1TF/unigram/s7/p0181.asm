.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 58
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 105
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 114
sub rax, -1628299544
cmovno edx, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
or sil, dl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], esi
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
lea rax, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
