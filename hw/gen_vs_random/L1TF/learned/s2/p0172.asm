.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
cmp al, al
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
setbe cl
setp bl
movsx ecx, dl
bt rcx, rax
jmp .bb_0.1
.bb_0.1:
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb di, si
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 92
jmp .bb_0.2
.bb_0.2:
bt rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
