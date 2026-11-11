.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
lea esi, qword ptr [rax + rdx + 59]
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], -2
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test esi, 34
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
setle dil
cwde
mul rax
jmp .bb_0.1
.bb_0.1:
add al, sil
and rbx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rbx]
adc rsi, rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
lea cx, qword ptr [rsi + rcx + 67]
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
