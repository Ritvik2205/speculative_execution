.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 14
and rdx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdx]
bts rcx, 17
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 14
add sil, al
test rcx, 81
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 12
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
lea dx, qword ptr [rcx + rdx]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
lea ax, qword ptr [rax + rdx + 32]
add dl, 109 # instrumentation
sbb dl, 54
lea rsi, qword ptr [rdx + rcx + 67]
lea eax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], cl
adc sil, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
