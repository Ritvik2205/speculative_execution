.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], 31
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rsi], edx
and rax, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rax]
sub dx, ax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], sil
add bl, -101 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
lea di, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 85
lea rbx, qword ptr [rax + rax + 69]
lea edi, qword ptr [rax + rax + 96]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 90
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], -54
or rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
