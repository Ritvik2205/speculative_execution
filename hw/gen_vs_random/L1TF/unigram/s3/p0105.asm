.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -57
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 87
lea rcx, qword ptr [rdx + rdi]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
add bl, -79 # instrumentation
cmovo di, ax
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rsi]
movsx edx, cl
add sil, -61
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
