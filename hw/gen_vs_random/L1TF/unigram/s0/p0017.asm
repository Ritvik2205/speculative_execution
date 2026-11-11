.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
neg dil
add dl, cl
mov si, dx
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
sub cl, bl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], al
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rax, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
cmovnbe rbx, rcx
not edi
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
