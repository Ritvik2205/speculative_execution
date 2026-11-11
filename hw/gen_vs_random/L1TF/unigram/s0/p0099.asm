.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
cmovz edi, esi
lea rcx, qword ptr [rcx]
lea ebx, qword ptr [rax + rdx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
neg ebx
lea dx, qword ptr [rcx + rdx]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 92
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 54
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 73
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rax
sbb dl, dl
add bl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
