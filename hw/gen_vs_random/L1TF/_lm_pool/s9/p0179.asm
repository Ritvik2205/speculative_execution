.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 27
and rcx, 30
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 116
and dil, -22
or sil, -44
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 1
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 85
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], sil
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
add al, bl
bts edi, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
