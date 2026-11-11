.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 63
sbb al, dl
setnb dil
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
btc rsi, 88
and rdx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdx]
adc rdx, 90
adc ebx, ecx
adc rcx, 19
dec sil
btr ecx, eax
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 51
add al, -21 # instrumentation
mov edi, esi
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
lea rsi, qword ptr [rsi + rbx + 52]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
