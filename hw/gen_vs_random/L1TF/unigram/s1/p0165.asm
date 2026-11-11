.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rsi
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
movzx si, dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
lea si, qword ptr [rsi + rsi + 66]
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
add al, 65 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rcx
adc cl, 62
xchg edx, eax
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
lea bx, qword ptr [rcx]
add al, -49 # instrumentation
setnb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
