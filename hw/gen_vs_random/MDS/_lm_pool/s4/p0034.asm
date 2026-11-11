.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
or al, -61
xor al, dil
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
test al, sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or al, -17
or bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
or ax, -6817
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
