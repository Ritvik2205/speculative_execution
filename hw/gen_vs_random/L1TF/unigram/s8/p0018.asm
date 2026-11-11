.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -88
dec cl
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], 93
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 21
mov al, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
test si, 88
setns sil
sbb rbx, -117
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdx], rdi
test di, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
