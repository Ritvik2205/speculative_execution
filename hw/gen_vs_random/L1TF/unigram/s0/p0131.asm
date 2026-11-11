.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 100
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
xor bx, 43
add bx, 36
cmovbe eax, ecx
setnb bl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
add rbx, 99
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 83
setle cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 5
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
lea rcx, qword ptr [rsi]
dec cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
