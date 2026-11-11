.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 109 # instrumentation
sbb bl, 120
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rsi], esi
add dl, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
lea ebx, qword ptr [rsi]
lea ecx, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and cl, -109 # instrumentation
cmovns rsi, rsi
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 47
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 50
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 358568732
adc eax, 551972257
cmovb di, di
and rbx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
