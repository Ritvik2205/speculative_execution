.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -117 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
cmovnbe bx, ax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
add al, -49 # instrumentation
setnb bl
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
mul dil
inc dil
adc dl, al
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 35
sbb al, 85
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
