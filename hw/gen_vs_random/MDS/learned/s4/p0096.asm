.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor esi, 72
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 60
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
xor al, sil
xor bx, 44
xor rsi, -117
jmp .bb_0.1
.bb_0.1:
or cl, cl
and dil, dil
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
and bl, bl
and dil, -62
bt bx, di
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
