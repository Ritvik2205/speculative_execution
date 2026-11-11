.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 1447934463
and rsi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rbx]
setno dl
mul dil
and rsi, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dx, word ptr [r14 + rcx]
lea esi, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 39
cmovno di, di
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
setnbe dil
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 6
lea rax, qword ptr [rdi + rbx + 92]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
