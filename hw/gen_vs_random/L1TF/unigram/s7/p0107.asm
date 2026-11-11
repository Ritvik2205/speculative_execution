.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cdq
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rcx, 44
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
cmovnl rdi, rax
jmp .bb_0.1
.bb_0.1:
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], cx
test rax, rsi
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
neg cl
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], ax
cmovle rsi, rbx
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
