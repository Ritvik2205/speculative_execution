.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, rbx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rax], si
cwd
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
xchg edi, esi
add sil, cl
imul rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
cmovb eax, edx
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdi]
xor dl, dil
bt cx, bx
xor rdx, rcx
add bl, 124 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 13
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
