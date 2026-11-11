.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 46
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 27
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
xor bl, 38
btr edi, 1
or ebx, 97
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
cmp rcx, 72
cmp bl, 123
setnb dl
sbb dil, dl
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 28
cmp ebx, 37
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
xor bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
