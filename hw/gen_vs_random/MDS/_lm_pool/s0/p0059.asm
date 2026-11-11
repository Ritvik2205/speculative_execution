.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
or ax, -20176
and rdx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
or cl, cl
xor dil, -5
jmp .bb_0.1
.bb_0.1:
or al, cl
or sil, -78
and al, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test sil, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
or dil, sil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
test bl, -114
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
