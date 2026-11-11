.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
or rax, -82
xor bl, al
xor dl, 9
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
btc si, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], al
jmp .bb_0.3
.bb_0.3:
add esi, -17
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
