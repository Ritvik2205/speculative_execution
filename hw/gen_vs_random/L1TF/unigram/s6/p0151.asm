.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], bl
cmp eax, 123533400
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], bl
and dil, -82
not ebx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and dl, bl
add dl, -70
cwde
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdi, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdi]
lea di, qword ptr [rdi + rcx + 65]
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
imul rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
