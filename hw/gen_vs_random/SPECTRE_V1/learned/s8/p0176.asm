.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rsi]
add dil, dil
mov dl, al
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], -121
xchg al, bl
add al, -72
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rcx]
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
lea rdx, qword ptr [rsi + rax + 42]
jmp .bb_0.3
.bb_0.3:
lea dx, qword ptr [rax + rbx + 47]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
