.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, bx
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
add dl, -86 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
lea di, qword ptr [rdi]
xor al, dl
add al, -29 # instrumentation
add al, -70 # instrumentation
setnp al
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
js .bb_0.1
jmp .exit_0
.bb_0.1:
imul al
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 70
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
xor rax, 29
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -73
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
