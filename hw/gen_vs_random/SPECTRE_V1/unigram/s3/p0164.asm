.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr rdx, 75
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 54
test al, 70
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax]
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
or sil, sil
or ax, 0b1000000000000000 # instrumentation
bsr si, ax
or cx, dx
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
adc dl, 4
adc sil, dl
add dl, -124 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
