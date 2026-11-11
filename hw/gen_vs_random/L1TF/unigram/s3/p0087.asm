.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 90
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
add al, -80
lea di, qword ptr [rdi]
add dl, -95 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
add cl, 6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
and rsi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 6
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 48
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
