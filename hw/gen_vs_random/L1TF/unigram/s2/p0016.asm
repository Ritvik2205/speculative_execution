.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, -97
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
bt ecx, 42
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 94
lea ax, qword ptr [rdi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
mov dl, cl
and rsi, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
