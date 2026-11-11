.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
lea si, qword ptr [rsi + rax]
inc cx
lea eax, qword ptr [rsi + rbx]
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 50
and rdi, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rdi]
dec dl
mov dx, cx
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
lea rdx, qword ptr [rcx + rbx + 83]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
