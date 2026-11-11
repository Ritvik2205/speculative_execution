.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, bl
imul rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rcx]
cwde
btr cx, si
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
movsx ecx, dil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea si, qword ptr [rdx + rbx + 26]
sbb bl, dil
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
