.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 79
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and bl, bl
not bl
test rcx, -613256812
and rax, 1250429750
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
or al, sil
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
