.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, al
and rcx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
mul al
bts rax, rax
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rsi
lea edx, qword ptr [rcx + rdx + 96]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
lea si, qword ptr [rbx + rdx]
imul rsi, rdx, 89
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 61
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
sub dl, 105
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], -109
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
