.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 39
and rcx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rcx]
sub dl, dil
lea dx, qword ptr [rsi]
add bl, -40 # instrumentation
sbb rbx, 70
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
mul rax
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rsi
sub esi, 17
jmp .bb_0.1
.bb_0.1:
cmp ecx, 20
add cl, 88
add bl, 68
xchg edx, eax
add dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
cmp edx, edx
add dil, 100 # instrumentation
lea cx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
