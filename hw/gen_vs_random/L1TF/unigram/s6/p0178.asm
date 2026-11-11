.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
test rsi, 493258429
neg dl
add cl, 107 # instrumentation
cmovnl si, si
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
setle cl
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
movzx edx, bl
bt ax, 205
sbb al, sil
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], si
cmovz rax, rbx
add al, 12 # instrumentation
lea rbx, qword ptr [rdi + rax]
lea bx, qword ptr [rdx + rsi + 94]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
