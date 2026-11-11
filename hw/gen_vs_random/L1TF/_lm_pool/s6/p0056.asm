.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -104 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
xor di, 73
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and bl, sil
bts ax, 201
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], cx
jmp .bb_0.1
.bb_0.1:
xor cl, 89
lea cx, qword ptr [rax + rbx + 34]
jmp .bb_0.2
.bb_0.2:
test al, -84
xor rax, rdi
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
