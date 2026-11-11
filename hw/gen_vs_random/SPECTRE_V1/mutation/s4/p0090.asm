.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 19 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
setnz cl
and rdi, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
add bl, -5 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
adc rax, 1310333622
lea cx, qword ptr [rdx + rsi]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 21
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add al, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
test cx, -17886
or eax, 1276549484
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], 75
setns bl
and rcx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rcx]
cmovnb rdi, rcx
and bx, -118
and rcx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
