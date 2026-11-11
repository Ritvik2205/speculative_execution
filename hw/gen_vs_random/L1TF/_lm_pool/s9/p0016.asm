.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 49
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
adc al, dl
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 94
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], ax
add al, cl
add cl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 45
cmovnle rax, rsi
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
