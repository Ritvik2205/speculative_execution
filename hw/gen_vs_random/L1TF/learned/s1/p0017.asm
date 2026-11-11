.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -48 # instrumentation
lea ecx, qword ptr [rcx + rbx]
adc sil, cl
adc rdx, 46
btc di, cx
or dl, cl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 43
or dil, -28
adc rdx, 40
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
xor sil, cl
add sil, -111
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 51
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
sbb rax, -1477844571
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
