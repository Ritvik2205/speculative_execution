.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax, bx, 65
and rdi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rdi]
xor al, al
movzx eax, si
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
bt si, 9
add dl, 10 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
test ebx, 58
test al, cl
and al, -68
add bl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
xor al, dl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 16
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
