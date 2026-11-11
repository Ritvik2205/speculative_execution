.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 89
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
test bx, 9
add bl, -92 # instrumentation
setnz cl
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], 121
and rcx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rcx], rdi
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 14
jmp .bb_0.1
.bb_0.1:
cmovs ecx, edi
and rsi, 17
or dil, -113
test esi, esi
add al, 27 # instrumentation
setnle al
add cl, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
