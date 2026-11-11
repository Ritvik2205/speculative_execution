.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 6 # instrumentation
adc rax, -384715932
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
test al, 70
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
xchg rdi, rdi
or dl, 65
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 51 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov al, al
jnz .bb_0.3
jmp .exit_0
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 42
lea edi, qword ptr [rcx + rdx]
and al, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
or al, 31
and rcx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
