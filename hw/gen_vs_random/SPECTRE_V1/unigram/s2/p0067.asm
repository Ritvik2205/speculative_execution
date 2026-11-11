.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, al
add al, -53 # instrumentation
sbb dil, al
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rbx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
cmp rcx, rdx
dec dx
and rdi, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdi]
btr rax, 19
cmp ebx, -33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xor rax, -1905683998
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
sub cl, bl
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
cmovo di, ax
add al, -94 # instrumentation
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
