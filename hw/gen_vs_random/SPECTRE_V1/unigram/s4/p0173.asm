.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rax]
sub cl, dil
and rsi, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rcx
or sil, 122
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 45
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
sub al, dl
neg edx
cmp bl, sil
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
not cx
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
