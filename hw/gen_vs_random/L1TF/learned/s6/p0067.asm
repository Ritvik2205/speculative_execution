.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rbx, rbx
setno sil
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
add cl, cl
jmp .bb_0.1
.bb_0.1:
lea rcx, qword ptr [rax + rdx]
adc cl, -34
btc di, bx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
sbb eax, -1165635662
xor sil, dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
cwde
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
