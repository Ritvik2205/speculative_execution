.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
or ebx, -104
or dl, -21
test al, -81
and cl, -71
and bl, 68
or rcx, 54
and rdx, 18
or dl, -89
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
or dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
