.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, sil
sbb dl, 5
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
add bl, -19 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rsi]
and edi, 21
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], rdi
or rsi, 39
cmovl dx, si
or cx, 4
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 30
btc ax, 8
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], di
neg al
lea rcx, qword ptr [rsi + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
