.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 125 # instrumentation
cmovbe rbx, rbx
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
lea rax, qword ptr [rdi + rsi + 8]
sub sil, al
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
and al, al
cmovnb ax, cx
jmp .bb_0.1
.bb_0.1:
movsx edx, cl
setz cl
cmovnz ax, ax
btr eax, 47
add al, -65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rdx]
or dl, -92
and rdi, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
