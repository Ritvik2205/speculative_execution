.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], -73
or di, 0b1000000000000000 # instrumentation
bsf si, di
add al, 27 # instrumentation
sbb ecx, edi
sbb cl, -123
lea edi, qword ptr [rax + rdi]
and rdi, -60
and rsi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rax
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and di, dx
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdi
add al, 40 # instrumentation
cmovp rbx, rax
adc ax, -8436
jmp .bb_0.2
.bb_0.2:
add dl, -76 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 41
setp dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
