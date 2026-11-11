.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rbx
and rdi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
cmovnb rdi, rbx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
test bl, al
or cl, sil
bts rdi, rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test edi, -1252846009
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
