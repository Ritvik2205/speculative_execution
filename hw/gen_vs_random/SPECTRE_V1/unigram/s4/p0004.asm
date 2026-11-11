.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 16
setno cl
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 95
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 21
and di, 61
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
add dl, -66 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], dx
cmovnbe si, si
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
lea rcx, qword ptr [rsi]
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 9
inc al
cwd
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
