.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, bl
setnle dil
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 77
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 43
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 54
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
lea rcx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rbx]
lea rdi, qword ptr [rdi + rbx]
movzx edx, dl
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], -111
btr rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
add dx, -103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
