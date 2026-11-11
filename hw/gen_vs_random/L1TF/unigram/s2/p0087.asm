.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
cmovnbe ecx, esi
mov sil, 54
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 49
lea bx, qword ptr [rsi + rdx + 23]
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
test ax, 13879
add al, -113 # instrumentation
mov rdi, -9188947962549951402
add dl, 78 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
add cx, 18
cmovno ax, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
add al, -9 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 73
add al, -37 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
adc edx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
