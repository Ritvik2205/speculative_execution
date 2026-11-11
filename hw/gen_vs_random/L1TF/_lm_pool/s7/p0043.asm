.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 27
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
not dl
or al, -57
sub rax, 1715032616
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdx]
add al, 93
jmp .bb_0.2
.bb_0.2:
or al, dil
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], bl
cmp dx, 65
xor dl, 9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
