.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdi]
add al, 124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 68
lea rcx, qword ptr [rdx + rsi + 76]
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rcx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rsi]
add dl, 20 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 44
and rbx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rbx]
bt rcx, 89
cmp rsi, 53
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
