.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], esi
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 81
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 51
and rsi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rsi]
add bl, 13 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 48
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
sub bl, 8
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
add cl, -110 # instrumentation
setbe bl
add dl, 13
cmovnp ecx, ebx
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
add dl, -76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
