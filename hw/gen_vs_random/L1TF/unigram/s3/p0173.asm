.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 126 # instrumentation
setnb bl
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rbx]
lea edi, qword ptr [rdi + rbx + 27]
add dl, -108 # instrumentation
cmovnle edx, edx
and rdx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdx]
mov rcx, 20
btr si, di
xor dx, 98
xor al, sil
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
sbb rax, rbx
cmovz rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
