.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rcx, 92
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
and dl, al
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
lea rcx, qword ptr [rbx + rax]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovp cx, cx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
adc esi, -66
and rdx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdx]
setp cl
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
