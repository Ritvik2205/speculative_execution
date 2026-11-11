.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
bts rax, 45
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 31
add dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and dl, -98
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 43
setbe bl
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 37
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], di
add dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], 69
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rax], ax
and rbx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rbx]
add cl, 113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
