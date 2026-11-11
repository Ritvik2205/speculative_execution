.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 32
bt eax, edx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
bt rbx, rax
cmovnbe ebx, edi
xor al, 38
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], 85
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
add bl, 62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rcx, 39
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
