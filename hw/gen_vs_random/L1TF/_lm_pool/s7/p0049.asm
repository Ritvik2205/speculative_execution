.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, eax
and dl, cl
lea rbx, qword ptr [rsi + rdi + 36]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ebx
jmp .bb_0.2
.bb_0.2:
add bl, 62 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
