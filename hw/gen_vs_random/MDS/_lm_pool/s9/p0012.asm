.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
not al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or al, 54
xor di, 40
not cl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
and ax, 13090
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
