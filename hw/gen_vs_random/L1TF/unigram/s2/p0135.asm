.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 99
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rsi
xor dl, dl
and rdi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rdi]
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
lea rdx, qword ptr [rbx + rdi]
and rax, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rax]
dec edi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
test al, -104
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdx
xchg cl, bl
imul rcx
neg dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
