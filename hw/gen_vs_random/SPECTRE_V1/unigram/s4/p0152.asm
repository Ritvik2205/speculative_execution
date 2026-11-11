.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
mul bl
dec dl
cmovo rdi, rdx
cmovno rcx, rcx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 29
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
xor rbx, -34
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], -13
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
movsx rax, di
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
test di, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
