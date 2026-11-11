.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec dx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
setz al
add dil, al
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 43
cmovo rbx, rcx
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
add bl, 92 # instrumentation
sets dl
cmovl edi, edx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rax]
cmovs rcx, rax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 67
xor al, bl
imul rdx, rbx
lea ax, qword ptr [rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
