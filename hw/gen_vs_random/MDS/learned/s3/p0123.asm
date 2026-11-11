.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
and bx, 68
and dl, dl
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and ax, 5001
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
not sil
not dil
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor al, 8
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
xor dl, -43
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
