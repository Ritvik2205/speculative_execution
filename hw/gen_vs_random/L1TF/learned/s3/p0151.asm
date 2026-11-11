.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
add dl, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
xchg bl, cl
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 40
mov al, 79
bt rdx, rcx
not ebx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
or rcx, -10
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 23
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
bt rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
