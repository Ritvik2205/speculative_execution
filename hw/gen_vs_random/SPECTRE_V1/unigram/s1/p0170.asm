.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
cmovno rdi, rdx
movsx eax, al
sbb edi, 39
add al, -36 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 20
cmovnbe bx, si
jle .bb_0.1
jmp .exit_0
.bb_0.1:
nop
test rax, 1469613902
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 22
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
sub eax, -911655926
test rcx, -1420345926
xor dl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], di
lea rcx, qword ptr [rdx + rbx + 75]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
