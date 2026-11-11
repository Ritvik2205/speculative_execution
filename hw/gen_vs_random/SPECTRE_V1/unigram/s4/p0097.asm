.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, al
inc rcx
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btr word ptr [r14 + rcx], di
add ecx, 85
mul cx
cmovnz si, di
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
movsx rax, cx
inc ecx
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 44
add bl, -15 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], cl
cmovo rbx, rdx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
inc ax
and rdi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
