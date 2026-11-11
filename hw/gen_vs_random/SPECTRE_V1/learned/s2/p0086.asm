.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -73 # instrumentation
setnbe al
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
sub dl, -29
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
cmp dil, cl
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sub edi, 18
add sil, 36
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
bts rsi, 234
cmovnb bx, ax
lea rbx, qword ptr [rax + rbx + 34]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 49
add al, 127 # instrumentation
sets bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
