.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 89
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 3
xor dil, -70
and sil, -69
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and al, 35
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 19
and esi, 54
jmp .bb_0.1
.bb_0.1:
test bl, sil
xor bl, dl
jmp .bb_0.2
.bb_0.2:
and al, sil
and ebx, 41
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
