.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], dx
jle .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, al
and dil, 98
btr rax, 71
add eax, 1938514106
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
sub al, bl
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
add eax, -371144449
or ecx, 46
mov sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
