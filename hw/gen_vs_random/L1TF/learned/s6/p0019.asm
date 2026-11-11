.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
setno dil
setno cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
or bl, sil
and bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
