.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
lea bx, qword ptr [rdi + rax]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 82
bt bx, 27
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
lea rdi, qword ptr [rsi]
test dl, dil
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], ax
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add cl, 29 # instrumentation
setnb al
and rdx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
