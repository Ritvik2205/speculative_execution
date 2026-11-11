.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
test bl, -8
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
lea cx, qword ptr [rdx]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
js .bb_0.2
jmp .exit_0
.bb_0.2:
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ecx
lea rsi, qword ptr [rcx + rdi + 90]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
sub al, sil
or sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
