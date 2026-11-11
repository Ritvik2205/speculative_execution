.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], 46
sub al, bl
add dl, 47
cwde
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
lea di, qword ptr [rdx + rsi]
test cl, -62
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rdx]
neg rbx
and rax, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rax]
sbb bl, al
or al, 100
sbb al, -112
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
